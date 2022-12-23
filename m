Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC73655385
	for <lists+v9fs-developer@lfdr.de>; Fri, 23 Dec 2022 19:14:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p8mZI-000679-Mg;
	Fri, 23 Dec 2022 18:14:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95) (envelope-from
 <1axbzngfdqrw3qttkekmmouflkgrjnzptdk8su@bf05.eu1.hubspotemail.net>)
 id 1p8mZG-000672-Vu for v9fs-developer@lists.sourceforge.net;
 Fri, 23 Dec 2022 18:14:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Subject:Message-ID:To:
 Reply-To:From:Date:List-Unsubscribe:Sender:Cc:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yGW5yM3Nz3NIzj1WrLPtG4JQUyNIoXgwm/xLIjfSC+g=; b=iRgdlV4bIBREMd0Z6EOGblh/hg
 iALp6fvaDJYvrUuQll69GfrXwtWqxwezoCUejDuxN+NKAzdry0qsjdLEwGbJJSs0b60J85JyjLbG8
 3vDS6EBMvh9Dz4OAerk3rBYgYEZAr3GbYBbDcOV7C4Dm+JJWhNvxRJTF5y5lfNRReoAM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Subject:Message-ID:To:Reply-To:From:Date:
 List-Unsubscribe:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yGW5yM3Nz3NIzj1WrLPtG4JQUyNIoXgwm/xLIjfSC+g=; b=Wi6j9vp9Rdf56dPuupdnHfhinv
 RFb2akLknEoel57Sr5Z6s2SK9501+FjvCsvd/Wm/uE1BkxbKHf104YMF2mQjwM6oBE1f9HeiD7MWx
 sM53Gk4Br9wElW2hdyc95bs5BkzYTB0VTG5mX70ezNq7c7c/h1m6UfOuYuL+A+x7VU7Q=;
Received: from bd77e74.bf05.eu1.hubspotemail.net ([143.244.84.66])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1p8mZF-009G5h-1R for v9fs-developer@lists.sourceforge.net;
 Fri, 23 Dec 2022 18:14:50 +0000
Received: by 172.16.142.80 with SMTP id avf47m3rs9k7qabntzj0x0f41go572v1j1z;
 Fri, 23 Dec 2022 18:14:40 GMT
DKIM-Signature: v=1; s=hs1; d=bf05.eu1.hubspotemail.net; 
 i=@bf05.eu1.hubspotemail.net; 
 h=sender:from:from:reply-to:to:to:cc:cc:subject:subject:list-unsubscribe:form-sub:feedback-id;
 a=rsa-sha256; c=relaxed/relaxed; 
 bh=yGW5yM3Nz3NIzj1WrLPtG4JQUyNIoXgwm/xLIjfSC+g=; 
 b=Vy4cEHLQz9yMlFFJCAPbjgcBUjJ7DIu4W50j24nQVYRW2zGMoqniWAJWvgFCtc
 KqUsYAzkrUVD8VmCgcmOKlHuGpJRoP/9uvubWJQReNbRy4ICpX3nFIlspQmqk6A
 Zud6GCvnhT3qlvKRJMOC+10FFCmMUWoGINCj5Fso5yMQqc+u9L3bZ7282IY6v9E
 wlRunTkAm6JhE9tshxpT6NbtnV9gM3M0E7UF9ElOIsoi6tO+mBw65LJZokU74o9
 f2bFS5+W/23uYlF2hc4FqkR7P2v8SF9307+hI41liYp3Ta7tD/ub3FZFwkp2tZU
 8cswLi81J9qZbdY1k4PZggKCZZTg==; q=dns/txt; t=1671817507; 
 x=1671990307;
X-HS-Cid: 1axe6ajwq2j9vlmaejbsmnig6ndn90pogqs9se
Date: Fri, 23 Dec 2022 19:14:40 +0100
From: Jens Hautekeete <noreply@auctim.com>
To: v9fs-developer@lists.sourceforge.net
Message-ID: <1671816658206.f08de1a6-f027-4f3b-af77-2bcb314f957f@bf05.eu1.hubspotemail.net>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@hubspot.com (see
 https://policy.hubspot.com/abuse-complaints)
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: We wish you a happy holiday with friends and family!
 AUCTIM_LOGO_ONLINE_AUCTIONS_BLACK_TRANSPARANT_300PPI
 (https://d316DH04.eu1.hubspotlinks.com/Ctc/GG+113/d316DH04/VXcds965nFYcW29Ngd37qXrrLW4FBnYy4TXkb5N15bQWX3l0fwV1-WJV7CgKPVW60XYFh6dBZR5W6wDsyG7988JV
 [...] Content analysis details:   (0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [143.244.84.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 URI_HEX                URI: URI hostname has long hexadecimal sequence
 0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
 identical to background
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium trust sender
X-Headers-End: 1p8mZF-009G5h-1R
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?q?Merry_Auctmas_=F0=9F=8E=84_and_Happy_N?=
 =?utf-8?b?ZXcgWWVhciDwn42+?=
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
Reply-To: noreply@auctim.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

We wish you a happy holiday with friends and family!

AUCTIM_LOGO_ONLINE_AUCTIONS_BLACK_TRANSPARANT_300PPI (https://d316DH04.eu1.hubspotlinks.com/Ctc/GG+113/d316DH04/VXcds965nFYcW29Ngd37qXrrLW4FBnYy4TXkb5N15bQWX3l0fwV1-WJV7CgKPVW60XYFh6dBZR5W6wDsyG7988JVN3vLcLGQ5R2wW3rpJx-4s5FXDW7KCyTb3JfGNGW7ts1pT4VYS77W1SG7g21_g-l4W4yW5q02YMXTlW1r9vxn3wcGqWW43V3lx3Gjbc-W7YT11c987ylZW8fHRc341FpQ9W6zH_fN4YbmcFW8r40HZ4NyD7CW64nfDQ82JXSLW8mNH2b88mqVRW7D5_KD2MvbGbW8mlPZG22Ql0KW6LM3Wb8-LKn7W3rT8Tn4jvvk8W5sZ_2S180LcvN2-YVMjx6P6Q3h8q1 )

Red Pop Shop Black Friday Sale Newsletter Email (2) (https://d316DH04.eu1.hubspotlinks.com/Ctc/GG+113/d316DH04/VXcds965nFYcW29Ngd37qXrrLW4FBnYy4TXkb5N15bQWX3l0fwV1-WJV7CgKPVW60XYFh6dBZR5W6wDsyG7988JVN3vLcLGQ5R2wW3rpJx-4s5FXDW7KCyTb3JfGNGW7ts1pT4VYS77W1SG7g21_g-l4W4yW5q02YMXTlW1r9vxn3wcGqWW43V3lx3Gjbc-W7YT11c987ylZW8fHRc341FpQ9W6zH_fN4YbmcFW8r40HZ4NyD7CW64nfDQ82JXSLW8mNH2b88mqVRW7D5_KD2MvbGbW8mlPZG22Ql0KW6LM3Wb8-LKn7W3rT8Tn4jvvk8W5sZ_2S180LcvN2-YVMjx6P6Q3h8q1 )

Facebook (https://d316DH04.eu1.hubspotlinks.com/Ctc/GG+113/d316DH04/VXcds965nFYcW29Ngd37qXrrLW4FBnYy4TXkb5N15bQWX3l0fwV1-WJV7CgXN3W2x9hcM1z5YWKN5YyZmbCN51vW3nS5md1srXzsMwH1P6JQqdcW69ngc98HFDLWVLlGyW3HxmjfW2n_CJc7GPrwnW2T3VYn3ZbhMZW8bq8Kx12zrDnVfz56b2l7RXgW7-srdz4qll_PW3j5mKz8bRsXSVSNQ3m9lln8TW8PN88z7Tm8JWW6G9Crv47KD8XW1-DhGk1CbFBnW7TZMw32D2qVzW8wTcd82krn76W4cxCZd3kpfMGW7F0qwm7gjQWgW8y0yHZ6C2vXpW5kP3bj88hqCB3pPm1 )

LinkedIn (https://d316DH04.eu1.hubspotlinks.com/Ctc/GG+113/d316DH04/VXcds965nFYcW29Ngd37qXrrLW4FBnYy4TXkb5N15bQXc3l0fQV1-WJV7CgR19V_yHcK726p_PW6L624K2pgh1yW4Hjdxc1PR8_YW430dL651705hW5GQS8S8y3QnyW2_M9v03JhsnCW29RLf35pRDLtW796RRS39xyt3W2czFlH2nTGLdW67tybJ245XnKW8ZQlkn7fWvrrW3xvmhr3MZ_pQW506YPS1NjN-8W39b0FH5hH_4YN19LP5359F7RW6_fNVr8L0HydW3CTjg34hDMg0W5tJtqt40TPhlW878SgW5QPLCgW6cf7Rm2dfwXrW5NBKwc5VwWmYW5ZV4QW80dp5TW5JsyKD187PGtN3WcF-Yv7rLv3b101 )

Instagram (https://d316DH04.eu1.hubspotlinks.com/Ctc/GG+113/d316DH04/VXcds965nFYcW29Ngd37qXrrLW4FBnYy4TXkb5N15bQXc3l0fQV1-WJV7CgCdcW11b_hh6Vz9lHN2-q_mxyGNkfN1D4pxKCq8THW6DhK733FBwZ8VTXSKN579X-wW97YJHy1hPhD8W2xKWWX6gPSD2W6tfMwc39tTSSW6dsWgR9c7K_xW974wWR6601LRW3G6YLD18v2cJVZ3B4g5XBJbDW3wbb2d7fPkChW8VrfTS156G4GW6J9C-J6L3t_FW8HHgSn6x5dQzW7jnbRn8xz9CCW3_vrMP67fDb_W7BjQBj5xMpdKW3k-Fmj3CMcr0W3QR59B1JsMs6W76TyJT282L50W77JSTJ6kpc9hN5cc1xwdxV9s3h1N1 )

Auctim, Helstraat 47, Aartselaar, Antwerp 2630, Belgium

Unsubscribe (https://hs-25685946.s.hubspotemail-eu1.net/hs/manage-preferences/unsubscribe-all?languagePreference=en&d=Vnmbfd89d1PFW1kYV944cfL3BW4kCHTw45Nql-W3ZWWls4cg8TwW4hLxLG3M6647W3JFwn14f3Cq3N6BG1_pmWFgmW6dW9YG96TqK3V25wzK5MNTjHN94ThWpWBh4bN4Kbfh4XkGWyW1XQ6h_54pf0YW8MTky28Wf3-Cw7x1w8C7vl2&v=3&_hsenc=p2ANqtz-8UAumRUnaXJMINJFeA3TmFCL4rsJqUtAWxZ7yaip1oiwCbqHgaO6JQkYxK7hsP5AlJiFblb8B-EhIj3TcJAkh2LJrA7xAye9KsIigOMPHY7c9heJo&_hsmi=67103923 )

Manage preferences (https://hs-25685946.s.hubspotemail-eu1.net/hs/manage-preferences/unsubscribe?languagePreference=en&d=Vnmbfd89d1PFW1kYV944cfL3BW4kCHTw45Nql-W3ZWWls4cg8TwW4hLxLG3M6647W3JFwn14f3Cq3N6BG1_pmWFgmW6dW9YG96TqK3V25wzK5MNTjHN94ThWpWBh4bN4Kbfh4XkGWyW1XQ6h_54pf0YW8MTky28Wf3-Cw7x1w8C7vl2&v=3&_hsenc=p2ANqtz-8UAumRUnaXJMINJFeA3TmFCL4rsJqUtAWxZ7yaip1oiwCbqHgaO6JQkYxK7hsP5AlJiFblb8B-EhIj3TcJAkh2LJrA7xAye9KsIigOMPHY7c9heJo&_hsmi=67103923 )

Auctim, Helstraat 47, Aartselaar, Antwerp 2630, Belgium

Unsubscribe (https://hs-25685946.s.hubspotemail-eu1.net/hs/manage-preferences/unsubscribe-all?languagePreference=en&d=Vnmbfd89d1PFW1kYV944cfL3BW4kCHTw45Nql-W3ZWWls4cg8TwW4hLxLG3M6647W3JFwn14f3Cq3N6BG1_pmWFgmW6dW9YG96TqK3V25wzK5MNTjHN94ThWpWBh4bN4Kbfh4XkGWyW1XQ6h_54pf0YW8MTky28Wf3-Cw7x1w8C7vl2&v=3&_hsenc=p2ANqtz-8UAumRUnaXJMINJFeA3TmFCL4rsJqUtAWxZ7yaip1oiwCbqHgaO6JQkYxK7hsP5AlJiFblb8B-EhIj3TcJAkh2LJrA7xAye9KsIigOMPHY7c9heJo&_hsmi=67103923 )

Manage preferences (https://hs-25685946.s.hubspotemail-eu1.net/hs/manage-preferences/unsubscribe?languagePreference=en&d=Vnmbfd89d1PFW1kYV944cfL3BW4kCHTw45Nql-W3ZWWls4cg8TwW4hLxLG3M6647W3JFwn14f3Cq3N6BG1_pmWFgmW6dW9YG96TqK3V25wzK5MNTjHN94ThWpWBh4bN4Kbfh4XkGWyW1XQ6h_54pf0YW8MTky28Wf3-Cw7x1w8C7vl2&v=3&_hsenc=p2ANqtz-8UAumRUnaXJMINJFeA3TmFCL4rsJqUtAWxZ7yaip1oiwCbqHgaO6JQkYxK7hsP5AlJiFblb8B-EhIj3TcJAkh2LJrA7xAye9KsIigOMPHY7c9heJo&_hsmi=67103923 )
_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
