{ fetchpatch }:

let
  xsaPatch = { name , sha256 }: (fetchpatch {
    url = "https://xenbits.xen.org/xsa/xsa${name}.patch";
    inherit sha256;
  });
in {
  # 4.10 - 4.12
  XSA_298_410 = [
    (xsaPatch {
      name = "298-4.10";
      sha256 = "0ga0m5s0vwqsfss0h9fv8zn898wd8c8ir74vav17k0r0d95s3nwj";
    })
  ];

  # 4.10 - 4.12
  XSA_299_410 = [
    (xsaPatch {
      name = "299-4.10/0001-x86-mm-L1TF-checks-don-t-leave-a-partial-entry";
      sha256 = "1xdjijn9j1kmlgnys3aif9rrwwnl8zwng0lk4a6gkh3m5vsfigf3";
    })
    (xsaPatch {
      name = "299-4.10/0002-x86-mm-Don-t-re-set-PGT_pinned-on-a-partially-de-val";
      sha256 = "0jpjigbaq4x4dxhj3x2i592l6jjd6lz3kwi6g6bnf4yp406zv507";
    })
    (xsaPatch {
      name = "299-4.10/0003-x86-mm-Separate-out-partial_pte-tristate-into-indivi";
      sha256 = "01nd0m2si9y56hjqnm67amp83732jbxiqvmaw91yrz36llpwv485";
    })
    (xsaPatch {
      name = "299-4.10/0004-x86-mm-Use-flags-for-_put_page_type-rather-than-a-bo";
      sha256 = "05i45yviw2psglzv61fisnx5h123dypqgz1pyg5xzg23djc6csbk";
    })
    (xsaPatch {
      name = "299-4.10/0005-x86-mm-Rework-get_page_and_type_from_mfn-conditional";
      sha256 = "04dqhrvxn5h5vzc3ym088qqqarkfpfl9pbi4s3sxnf08jlgbfva1";
    })
    (xsaPatch {
      name = "299-4.10/0006-x86-mm-Have-alloc_l-23-_table-clear-partial_flags-wh";
      sha256 = "192ifqa8l6wnvdkil324xh3xs4v4fx70ipv56n3al7s057qsm13x";
    })
    (xsaPatch {
      name = "299-4.10/0007-x86-mm-Always-retain-a-general-ref-on-partial";
      sha256 = "04a19f3npnwgr20yawz3wkf61m5j1vcajb5pxnxvq4fqrz1pvlsr";
    })
    (xsaPatch {
      name = "299-4.10/0008-x86-mm-Collapse-PTF_partial_set-and-PTF_partial_gene";
      sha256 = "1bpl3p6yp12g722mf84nrh8rngfzbz88srndci8sgi0diy45cqbl";
    })
    (xsaPatch {
      name = "299-4.10/0009-x86-mm-Properly-handle-linear-pagetable-promotion-fa";
      sha256 = "1xbv4rrz7lyz48dqzsikj1ic551fv1f9s88dkk489rak0qmlvidw";
    })
    (xsaPatch {
      name = "299-4.10/0010-x86-mm-Fix-nested-de-validation-on-error";
      sha256 = "0dk9wy35n6gcblw1ibni2fsivif8nkdgscnnm8g4yd3xcikblaa8";
    })
    (xsaPatch {
      name = "299-4.10/0011-x86-mm-Don-t-drop-a-type-ref-unless-you-held-a-ref-t";
      sha256 = "0h6rrzvwy6i3gpcpimvaz0dlbyy7574chk3z655lxnj84xnv1l3s";
    })
  ];

  # 4.10 - 4.12
  XSA_301_411 = [
    (xsaPatch {
      name = "301-4.11-1";
      sha256 = "1yk4vizka03a5mkmgpmscmjsfn1hb53d89x1737cpn2bvbh7cvqz";
    })
    (xsaPatch {
      name = "301-4.11-2";
      sha256 = "1cg8hnpyn5gp6rx0sdhigalrwflgsgn29kiyk18636jh7wr7psmi";
    })
    (xsaPatch {
      name = "301-4.11-3";
      sha256 = "1hm0swc4d8xlnb2l8a64ymnz4c2d4fipk9rcfpl87xr7z3azvzv7";
    })
  ];

  # 4.10 - 4.12
  XSA_302_410 = [
    (xsaPatch {
      name = "302-4.10/0001-IOMMU-add-missing-HVM-check";
      sha256 = "1z0sf29gzwpic7ddpx08q898j61x3yrjy6a36ia0fj6rixyi0y9w";
    })
    (xsaPatch {
      name = "302-4.10/0002-passthrough-quarantine-PCI-devices";
      sha256 = "1ipxkvrb3jqvps3zzfb79kl8qshsm7fa9qjpgqhz1fh7m7assxia";
    })
  ];

  # 4.10 - 4.12
  XSA_304_410 = [
    (xsaPatch {
      name = "304/xsa304-4.10-1";
      sha256 = "1a65yrx38b9lywzq6pxjb4zxp44f47s6is5q8kkb9aqj6ihg501d";
    })
    (xsaPatch {
      name = "304/xsa304-4.10-2";
      sha256 = "0g54zz7jsagr082cjp13wi391ylkac9n3abixl2mgkzcvmqp7a4l";
    })
    (xsaPatch {
      name = "304/xsa304-4.10-3";
      sha256 = "04pm64q93sb40bbvqdaabazdhzxrp0rszmq65nispgnb5dnf8qlq";
    })
  ];

  # 4.10 - 4.12
  XSA_305_410 = [
    (xsaPatch {
      name = "305/xsa305-4.10-1";
      sha256 = "0g779hrknf5y4c1pxbnn2lcgbakyib3kc29wb34r7rl1k9mjrgli";
    })
    (xsaPatch {
      name = "305/xsa305-4.10-2";
      sha256 = "1g0qykdgrpxvylc0xy29p3w0aswg447fx1sk5d50dfd3wkp2ypdi";
    })
  ];

  # 4.10 - 4.12
  XSA_306_411 = [
    (xsaPatch {
      name = "306-4.11";
      sha256 = "1hfz02wm60namnrbk3kimx462dalb9klr46lvxagc3vbz74mh3mh";
    })
  ];

  # 4.10 - 4.12
  XSA_307 = [
    (xsaPatch {
      name = "307";
      sha256 = "15yy3dhk8amss00zzsfdna5xm1bq4ablhwmz8jy2jly0iiv55w3x";
    })
  ];

  # 4.10 - 4.12
  XSA_308 = [
    (xsaPatch {
      name = "308";
      sha256 = "17dfzl10pbl4y45b3j3ihl80swxxndxjy12jvg438xbgn44jny3y";
    })
  ];

  # 4.10 - 4.12
  XSA_309 = [
    (xsaPatch {
      name = "309";
      sha256 = "06zc1l51skl084b3qrn9lnq7m48qhk11kmiyixlxw93687s7ajqf";
    })
  ];

  # 4.10 - 4.12
  XSA_310 = [
    (xsaPatch {
      name = "310/0001-x86-mm-Set-old_guest_table-when-destroying-vcpu-page";
      sha256 = "0gxyp2y35cplaqz7msr5hl8h9hb23rsgnlkdfq1445mqn6hp1ij4";
    })
    (xsaPatch {
      name = "310/0002-x86-mm-alloc-free_lN_table-Retain-partial_flags-on-E";
      sha256 = "0ylvys2mqgwkg0n4d7nwif452ghikcqg7mfr7d4whwn5nkzw0g8p";
    })
    (xsaPatch {
      name = "310/0003-x86-mm-relinquish_memory-Grab-an-extra-type-ref-when";
      sha256 = "1vxksk0f1q1xj493abqawssqvpgzgnady28v2rzv7afy5kygncqq";
    })
  ];

  # 4.10 - 4.12
  XSA_311_410 = [
    (xsaPatch {
      name = "311-4.10-1";
      sha256 = "1gjr8ycxrqv8razxb2qmq06gh61r0pg23yxlh84jvh7sm1xfwfy7";
    })
    (xsaPatch {
      name = "311-4.10-2";
      sha256 = "00pyzxkd4n1m4n655ki5j89hr3pnzw3s6y3fbs2zv3nqi82536hq";
    })
  ];

  # 4.12 - 4.13
  XSA_312 = [
    (xsaPatch {
      name = "312";
      sha256 = "1rrhkxmdyisfl8q4ifdihz3jshb4kn3bym35vjfmr0g493a7h84v";
    })
  ];
  # 4.10 - 4.11
  XSA_312_411 = [
    (xsaPatch {
      name = "312-4.11";
      sha256 = "1s97yvx7vprqp0xingpyapdn0fzc2hkwzfxbh9f4n3spkh1v6r4d";
    })
  ];
}
