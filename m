Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D082982CF74
	for <lists+v9fs-developer@lfdr.de>; Sun, 14 Jan 2024 02:42:52 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1rOpWU-0003s2-J4;
	Sun, 14 Jan 2024 01:42:50 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <yqzhang@gzlt.cn>) id 1rOpWT-0003rw-1M
 for v9fs-developer@lists.sourceforge.net;
 Sun, 14 Jan 2024 01:42:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=y2e4xRYNh2MomHexZt+a6fAVKtZrxZ8LZrYCwLi/gzs=; b=S0G4LLb75eQ+kTtnzLe71THO41
 VXbwugKxAmk1ZoNjcJbjnS/r7aAlyU5W9Ug90ABc04Gqc1P9j6hkbALuy5weGo7CzvXOFeX7pG2MZ
 oOjNH6rECzFXECwx0c+tCurmtE/WEzSTuY8AWx5YjH3kEPUAHxLOhOeuCSpO0QR+sLkE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=y2e4xRYNh2MomHexZt+a6fAVKtZrxZ8LZrYCwLi/gzs=; b=L
 GDVDCAp540MTcU2sysfOv1xAiexc9PE21gA95imzcM0yz7sQ/b5RCJpeP4qpS1nsmuriN/fC1fSC4
 +EaNd0tCocKeU5RoIBNVABmtlJAbf1avTm6O3rLRpKBJhDyWp/Fbchb/UVuBookLaxl4bFg8keeUN
 zx5RjPCoq8VXECqY=;
Received: from [119.145.65.219] (helo=mail.gzlt.cn)
 by sfi-mx-2.v28.lw.sourceforge.com with smtp (Exim 4.95)
 id 1rOpWQ-0001kJ-Ou for v9fs-developer@lists.sourceforge.net;
 Sun, 14 Jan 2024 01:42:49 +0000
X-TX-TID: gzlt.cn_0_18D05A0AA9D
Received: from gzlt.cn ([114.222.238.7]) by gzlt.cn WITH SMTP
 ID S18D05A0AA96; Sun, 14 Jan 2024 09:40:32 +0800
Message-ID: <0A70871795CD79C39EFD95AB68DB3776@bxidubizs>
From: =?utf-8?B?44CQ566h55CG5ZGY44CR?= <yqzhang@gzlt.cn>
To: <v9fs-developer@lists.sourceforge.net>
Date: Sun, 14 Jan 2024 09:40:20 +0800
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Outlook Express 6.00.2900.5512
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.5512
X-Spam-Score: 7.3 (+++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  v9fs-developer禁用通知! 你好,v9fs-developer@lists.sourceforge.net
    您的: v9fs-developer@lists.sourceforge.net密码验证今天到期！ 请按照以下保留当前密码并更新。
    点击保持当前密码 禁用通知。 2024 
 
 Content analysis details:   (7.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [119.145.65.219 listed in dnsbl-1.uceprotect.net]
  1.9 URIBL_ABUSE_SURBL      Contains an URL listed in the ABUSE SURBL
                             blocklist
                             [URIs: geigei.cc]
  0.0 URIBL_PH_SURBL         Contains an URL listed in the PH SURBL blocklist
                             [URIs: geigei.cc]
  0.4 RCVD_IN_MSPIKE_L4      RBL: Bad reputation (-4)
                             [119.145.65.219 listed in bl.mailspike.net]
  1.7 URIBL_BLACK            Contains an URL listed in the URIBL blacklist
                             [URIs: geigei.cc]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
                             identical to background
  1.0 RCVD_IN_MSPIKE_BL      Mailspike blocklisted
  0.0 HDR_ORDER_FTSDMCXX_NORDNS Header order similar to spam
                             (FTSDMCXX/boundary variant) + no rDNS
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
  0.0 HTML_FONT_TINY_NORDNS  Font too small to read, no rDNS
  0.0 NORDNS_LOW_CONTRAST    No rDNS + hidden text
X-Headers-End: 1rOpWQ-0001kJ-Ou
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?5YWz5LqO77ya5oKo55qE6LSm5Y+3djlmcy1k?=
	=?utf-8?b?ZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV056aB55So6YCa55+l?=
	=?utf-8?b?44CQ6YeN6KaB44CR?=
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
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

DQoNCnY5ZnMtZGV2ZWxvcGVy56aB55So6YCa55+lIQ0KDQrkvaDlpb0sdjlmcy1kZXZlbG9wZXJA
bGlzdHMuc291cmNlZm9yZ2UubmV0DQoNCuaCqOeahDogdjlmcy1kZXZlbG9wZXJAbGlzdHMuc291
cmNlZm9yZ2UubmV05a+G56CB6aqM6K+B5LuK5aSp5Yiw5pyf77yBDQror7fmjInnhafku6XkuIvk
v53nlZnlvZPliY3lr4bnoIHlubbmm7TmlrDjgIIgDQrngrnlh7vkv53mjIHlvZPliY3lr4bnoIEg
DQog56aB55So6YCa55+l44CCIDIwMjQgDQoNCg0KDQoNCg0KDQoNCg0KDQoNCg0KDQoNCg0KDQoN
Cg0KDQoNCg0KDQoNCg0KDQoNCg0KDQoNCg0KDQoNCg0KDQoNCg0KDQoNCg0KDQoNCg0KDQoNCg0K
DQoNCg0KDQoNCg0KDQoNCg0KDQoNCui3teihjOKAnOWbm+S4i+WfuuWxguKAneW3peS9nOaWueaz
le+8jOW7uueri+WHuuWPo+mynOa0u+WGnOS6p+WTgeWxnuWcsOafpeajgOKAnOe7v+iJsumAmumB
k+KAne+8jOWFsOW3nua1t+WFs+aJgOWxnuW5s+WHiea1t+WFs+W4uOaAgeWMluW8gOWxleKAnDfD
lzI04oCd5bCP5pe26aKE57qm55Sz5oql44CB6aKE57qm5p+l5qOA77yM5a6e6KGM6ZqP5oql6ZqP
5qOA44CB6ZqP5oql6ZqP5pS+44CCMjAyM+W5tOWJjTEx5Liq5pyI77yM55SY6IKD5bmz5YeJ44CB
5bqG6Ziz5Zyw5Yy66bKc6Iu55p6c5Ye65Y+j5YC8MS45NeS6v+WFg++8jOWQjOavlOWinumVvzQ2
LjEl44CCDQrjgIDjgIDnrKzkuozmibnkuLvpopjmlZnogrLlvIDlsZXku6XmnaXvvIzlkITlnLDm
tbflhbPlnZrmjIHlsIbmt7HlhaXkuIDnur/osIPmn6XnoJTnqbbkvZzkuLrlvJjmiazigJzlm5vk
uIvln7rlsYLigJ3kvJjoia/kvZzpo47nmoTmnInmlYjot6/lvoTvvIzlvIDlsZXigJzmiJHkuLrm
tbflhbPmlLnpnannjK7kuIDnrZbigJ3igJznmb7lkI3kvJjnp4Dmiafms5XkuIDnur/np5Hplb/k
uJPpobnosIPnoJTigJ3nrYnmtLvliqjvvIzlub/lpKflhZrlkZjlubLpg6jku6XmsYLlrp7jgIHm
iY7lrp7jgIHmnLTlrp7mtbflhbPkvZzpo47vvIzlpZTnnYDpl67popjljrvjgIHluKbnnYDmgJ3o
gIPlm57vvIzmjqjliqjkuLvpopjmlZnogrLmiJDmnpzovazljJbkuLrmnI3liqHnvqTkvJfnmoTn
lJ/liqjlrp7ot7XjgIINCuOAgOOAgOe0p+ebr+Wwj+WIh+WPo++8jOWBmuWlveecn+iwg+eglO+8
jOW5suWHuuWunuS4vuaOqu+8jOWMl+S6rOa1t+WFs+aJgOWxnuS6puW6hOa1t+WFs+i3teihjOKA
nOWbm+S4i+WfuuWxguKAneW3peS9nOaWueazle+8jOiBmueEpuS8mOWMluiQpeWVhueOr+Wig+OA
geacjeWKoeaUr+afseS6p+S4muetieW3peS9nO+8jOaQreW7uuWFs+S8geayn+mAmuahpeaigeOA
gg0K44CA44CA5aSp5rSl5rW35YWz5omA5bGe5aSp5rSl5L+d56iO5Yy65rW35YWz5byA5bGV4oCc
5b2T5LiA5qyh5oql5YWz5ZGY4oCd5rS75Yqo44CC5bel5L2c5Lq65ZGY5Y+R546w6Iiq56m65Yi2
6YCg5Lia5bCP6J665Lid562J6L+b5Y+j5paZ5Lu256eN57G75p2C44CB5pWw6YeP5aSa44CB55Sz
5oql6Zq+77yM5Yib5paw4oCc5Y2V5LiA5ZOB5ZCN44CB5Y2V5LiA56iO5Y+34oCd55uR566h5o6q
5pa977yM5bCGODAwMOS9meenjemjnuacuui+heaWmeWMlue5geS4uueugOOAgeaJk+WMheebtOaK
pe+8jOWPmOKAnOWNg+W8oOWNleKAneS4uuKAnOS4gOW8oOWNleKAne+8jOino+WGs+S6huS8geS4
mueUs+aKpemavumimOOAgg0KDQoNCiB7el80NV83MH0gCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fClY5ZnMtZGV2ZWxvcGVyIG1haWxpbmcgbGlzdApWOWZz
LWRldmVsb3BlckBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQvbGlzdHMvbGlzdGluZm8vdjlmcy1kZXZlbG9wZXIK
