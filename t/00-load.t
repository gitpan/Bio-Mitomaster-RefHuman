#!perl -T

use Test::More tests => 19;

BEGIN {
	use_ok( 'Bio::Mitomaster::RefHuman' );
}

diag( "Testing Bio::Mitomaster::RefHuman $Bio::Mitomaster::RefHuman::VERSION, Perl $], $^X" );

my $ref = Bio::Mitomaster::RefHuman->new();
ok( $ref->ref_seq );
ok( $ref->ref_seq(1, 3) eq 'GAT');
ok( $ref->ref_seq(16565, -1) eq 'GAT');
ok( $ref->ref_seq(16567) eq 'TG');
ok( $ref->ref_seq(-3) eq 'ATG');
ok( $ref->ref_seq(-3, -1) eq 'AT');
ok( $ref->codon_code );
ok( $ref->codon_code('TTT') eq 'F' );
ok( $ref->codon_code('UUU') eq 'F' );
ok( $ref->locus(16)->{'starting'} == 5903 );
ok( $ref->locus('COI')->{'strand'} eq 'H');
ok( $ref->protein(16)->{'predicted_weight'} == 57000 );
ok( $ref->protein('COI')->{'glycine_number'} == 2 );
ok( $ref->transcript(16) );
ok( $ref->transcript(16,1,3) eq 'AUG' );
ok( $ref->translation(16) );
ok( $ref->translation(16,1,3) eq 'MFA' );
ok( $ref->translation(16,3,3) eq 'A' );
