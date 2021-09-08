Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A9794033B6
	for <lists+v9fs-developer@lfdr.de>; Wed,  8 Sep 2021 07:23:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mNq3d-0002tW-36; Wed, 08 Sep 2021 05:23:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <shxiangbo@shxiangbo.com>) id 1mNq3U-0002t6-VD
 for v9fs-developer@lists.sourceforge.net; Wed, 08 Sep 2021 05:23:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Message-ID:Mime-Version:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UmT1qiEZ7QX2NEPZGqF1ny8D6jeiEQhYTJQcoAWoQgo=; b=XY6YVbVMt+VXfMS40FFAHVcEDY
 Ancy9iCa1qPRpTQXnUzCS4Xr/7/zomgtfw4ExM25Rp+t2lGizoW1MsWbIB/OapjE5lE4CyglSBKOF
 BTEJbxBg3EfhCVe8ufDFrpQEECHjNdH97o4A/+SkynIx4Ef+d6vWWx28I6wHW4gb0vm0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Message-ID:Mime-Version:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=UmT1qiEZ7QX2NEPZGqF1ny8D6jeiEQhYTJQcoAWoQgo=; b=O
 1GOHLo0L5ak6nIqfPHFeDYjaV5kntFEiL1sNfam/liYTkQOyGUlr27Ws4FkI6QcyoS+yGNe1b/GbN
 8MJCGqQxqpEVVF3N6G9rTvQ4C8O18Y8ZiJVngjYrAd+qDj+ejkFaMP0OLLNfC/xpK50Le6pasuXws
 jZ8WlJjA4BgZnyUU=;
Received: from relay.mail.sohu.net ([111.202.126.91])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.3)
 id 1mNq3N-0020nJ-9w
 for v9fs-developer@lists.sourceforge.net; Wed, 08 Sep 2021 05:23:23 +0000
Received: from haraka_router_25251 (unknown [10.16.68.130])
 by out_71_182.relay.mail.sohu.net (Postfix) with ESMTP id 4H49X25Pnkz20N0
 for <v9fs-developer@lists.sourceforge.net>;
 Wed,  8 Sep 2021 13:23:14 +0800 (CST)
Received: via haraka outbound.js at Wed, 08 Sep 2021 13:23:14 +0800
X-SOHU-Delivered-To: v9fs-developer@lists.sourceforge.net
Received: from iyhsjb ([10.16.69.89])
 by haraka_router_25251 (Haraka/2.0.5) with ESMTP id
 D8593BB0-12E0-4D75-BC6C-323D705D680D.1
 envelope-from <shxiangbo@shxiangbo.com>;
 Wed, 08 Sep 2021 13:23:14 +0800
Received: from iyhsjb (unknown [115.230.58.6])
 by relay131.mail.sohu.net (Postfix) with ESMTPA id 4H49X22CxHz1yqH
 for <v9fs-developer@lists.sourceforge.net>;
 Wed,  8 Sep 2021 13:23:14 +0800 (CST)
Date: Wed, 8 Sep 2021 13:22:57 +0800
From: =?UTF-8?B?6YCa55+lOg==?= <shxiangbo@shxiangbo.com>
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7, 0, 1, 91[cn]
Mime-Version: 1.0
Message-ID: <202109081323046056465@shxiangbo.com>
X-Sohu-ClientIP: 115.230.58.6
X-Sohu-MailFrom: shxiangbo@shxiangbo.com
X-SOHU-ANTISPAM-TMASE: OK-10--4.1222-5.0000-N/A
X-TMASE-OEM-MatchedID: AMvd/RdTucwmIbcAVboN2yNH1NVkKpdwJ6OsvX8BpqQnk9xlxhsfy4JgpyCXhg/U8yu0t/h1HJ6z3fWrc3GgPsBvCbMlZ1nik/qUuB9cU+INAbGfaikbUx1s0d1/ljTNSoX6L1hUiVQ96JEyeynrjWsdifFxM5FMF7wOCsHvFSb8MrpJVsmKEiHDDTP9yFGP96hWkdAUoBzRNqHjfzA8lUjfzDJW4a0BPqrMOT99Ypa16XJN0n2ckWQjAuUSGXT7TOaeJ3XY4H87p73wit8/sg5VENJGZtCNYegWFDzsqKv5VaJz8IEsS/JYbiqM5w3ZPX/llBkt5kn/E99IOgLFfVJH/Ru6z88wBqDSPCSL2kuK8dELq8K0TpgTjKjZl2YfsmMloUN2vbYHiwiF9OOogcxFQxp3PhHyeUGIxYgwpXOCo6GMgAaE90O7ez+qqKmAmL8m0JtKLVOOz/LLJUcaHmzd8mVlXGBxI4eGaO7754V1QfihRKhFuopZZSkTaiPTblADM8W6M/kv5xFFRjsfbh4huWEfRKfpf+dFeR20M3yGE0yedfSxH8S9BJLumYkocQlizzeKdnug2/D5eC22DluG9y1leuU7fLNHMurfykhPasdpYD9En98mfxiZsPBGbVrm5bvQNuzrrT4Oq9+KU99faxl/I4mhngIgpj8eDcBpkajQR5gb3pacqsSFIP2U+ZL5o+vRV7wkETxr3nPDPFlmYwhSwhAauFFsJbQ14zDZs3HUcS/scMtsHVjphDXtAZW+q3V1tKombP6cJah/CZoYH1Z+10Zx8halT98BOzvY0nM80Glh5kCxXugrDUaNn50E9mHCcEWB2GRO9Ufp+2PLLio9x63VYHeR+gkm82bksvoxbHUXdBYfG5JL5XQbHjdJybv/hAHQlGwzysX1jhsABOWpW2SepP2BTBImb7mmd4YwgnFBF1Tpq/RLxGP7
X-SOHU-Antispam-Ers: 0
X-TMASE-OEM-Version: TmSpamFilter-1.0.1000-7.0.1014-24888.004-3.5.1032
REJECT_QID: 4H49X22CxHz1yqH
X-Spam-Score: 5.2 (+++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  用户v9fs-developer@lists.sourceforge.net 维护原因公司将于2021年9月8日启用新的电子邮件系统
    为了推进公司的信息化安全，请各位,使用新电子邮件系统。
    注意事项请收到此邮件的人员立即升级,以免影响你的正常使用,若不进行升级系统将自动删除该用户信息,重要文件会丢失
    操作指示 请点这里进行升级 
 
 Content analysis details:   (5.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.5 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [111.202.126.91 listed in dnsbl-1.uceprotect.net]
  2.7 RCVD_IN_PSBL           RBL: Received via a relay in PSBL
                             [111.202.126.91 listed in psbl.surriel.com]
  1.3 RCVD_IN_VALIDITY_RPBL  RBL: Relay in Validity RPBL,
                             https://senderscore.org/blocklistlookup/
                            [111.202.126.91 listed in bl.score.senderscore.com]
  0.0 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
                             [111.202.126.91 listed in bl.mailspike.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.7 MPART_ALT_DIFF         BODY: HTML and text parts are different
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.0 HTML_FONT_FACE_BAD     BODY: HTML font face is not a word
  0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
X-Headers-End: 1mNq3N-0020nJ-9w
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?5YWz5LqO77ya5YWs5Y+45ZCv55So5paw6YKu?=
 =?utf-8?b?5Lu257O757uf6YCa55+l77yB?=
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

ICAgICAgICAgICAgICAgICAgICAgIA0K55So5oi3djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNl
Zm9yZ2UubmV0IA0K57u05oqk5Y6f5Zug5YWs5Y+45bCG5LqOMjAyMeW5tDnmnIg45pel5ZCv55So
5paw55qE55S15a2Q6YKu5Lu257O757ufDQrkuLrkuobmjqjov5vlhazlj7jnmoTkv6Hmga/ljJbl
ronlhajvvIzor7flkITkvY0s5L2/55So5paw55S15a2Q6YKu5Lu257O757uf44CCDQoNCuazqOaE
j+S6i+mhueivt+aUtuWIsOatpOmCruS7tueahOS6uuWRmOeri+WNs+WNh+e6pyzku6XlhY3lvbHl
k43kvaDnmoTmraPluLjkvb/nlKgs6Iul5LiN6L+b6KGM5Y2H57qn57O757uf5bCG6Ieq5Yqo5Yig
6Zmk6K+l55So5oi35L+h5oGvLOmHjeimgeaWh+S7tuS8muS4ouWksQ0K5pON5L2c5oyH56S6DQro
r7fngrnov5nph4zov5vooYzljYfnuqcNCg0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZzLWRldmVs
b3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQv
bGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
