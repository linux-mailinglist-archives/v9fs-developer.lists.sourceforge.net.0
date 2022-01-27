Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C92E49D98C
	for <lists+v9fs-developer@lfdr.de>; Thu, 27 Jan 2022 05:13:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nCwAN-0004LD-TY; Thu, 27 Jan 2022 04:13:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <zhangping@hxbl.com>) id 1nCwAK-0004L3-CJ
 for v9fs-developer@lists.sourceforge.net; Thu, 27 Jan 2022 04:13:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Z416GLY21tYsFFKor8DowByTvOs9yAZsiRjhiTKGyrU=; b=IPwMTMhhU8NZa96zwWy+a5+2FM
 uvyP7cWL/LCjwyChP2Br6XCWI87pkOlvD4orr4RmrsvNg2h2IUuXDn88aPmgECz5iXGWmGQEF8P0W
 8DFAFYxnrFGW62iXEI8+/9Rq2diVNzYydV1klh7bowncDYYOWg4mpseirHSQZqXsWSEg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Z416GLY21tYsFFKor8DowByTvOs9yAZsiRjhiTKGyrU=; b=L
 29hRD6+Ydht7VKnj5EWI7DgNpXLATPYRQihWvHwIte0YOlNzt4FhdbnkUfB9Bfeo1R1z8PIAv4oX2
 xFYQ2Vxxzh1ma5/p/rMhwLLeISgyj7XwE6D/LPAbVi67ghynorcxsgM3gCDfimWgeFNoZVFvi3T+X
 ZUZYEoX+gJQqLZtc=;
Received: from mail.hxbl.com ([219.135.61.186])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1:DHE-RSA-CAMELLIA256-SHA:256) (Exim 4.92.3) id 1nCwAH-00FZ0I-Gl
 for v9fs-developer@lists.sourceforge.net; Thu, 27 Jan 2022 04:13:42 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.hxbl.com (Postfix) with SMTP id 268D18C0176
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 27 Jan 2022 12:13:33 +0800 (CST)
Received: from nkcquwpw (unknown [220.176.168.248])
 (Authenticated sender: zhangping@hxbl.com)
 by mail.hxbl.com (Postfix) with ESMTPA id 1CD768C0166
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 27 Jan 2022 12:13:32 +0800 (CST)
Message-ID: <86E25D4D046DA8133C099C03395F23ED@nkcquwpw>
From: =?utf-8?B?SVTov5Dnu7Tpg6g=?= <zhangping@hxbl.com>
To: <v9fs-developer@lists.sourceforge.net>
Date: Thu, 27 Jan 2022 12:13:14 +0800
MIME-Version: 1.0
X-Priority: 1
X-MSMail-Priority: High
X-Mailer: Microsoft Outlook Express 6.00.2900.5512
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.5512
X-DSPAM-Result: Whitelisted
X-DSPAM-Processed: Thu Jan 27 12:13:33 2022
X-DSPAM-Confidence: 0.9997
X-DSPAM-Probability: 0.0000
X-DSPAM-Signature: 1,61f21bed34575918511426
X-DSPAM-Factors: 27, Received*with, 0.00011, Received*id, 0.00011,
 Received*by+mail.hxbl.com, 0.00011,
 Received*mail.hxbl.com, 0.00011,
 Received*mail.hxbl.com+(Postfix), 0.00011,
 Received*(Postfix)+with, 0.00011, Received*from, 0.00011,
 Received*(Postfix), 0.00011, Received*by, 0.00011,
 Received*sender, 0.00012, Received*ESMTPA, 0.00012,
 Received*with+ESMTPA, 0.00012,
 Received*(Authenticated+sender, 0.00012,
 Received*(Authenticated, 0.00012, Received*ESMTPA+id, 0.00012,
 Received*(unknown, 0.00012, Content-Type*text/plain, 0.00014,
 Content-Type*text/html, 0.00015, Date*0800, 0.00016,
 Content-Transfer-Encoding*base64, 0.00017,
 Content-Transfer-Encoding*base64, 0.00017,
 From*hxbl.com>, 0.00017, a, 0.00020, Content-Type*8", 0.00020,
 Content-Type*8", 0.00020,
 Content-Type*charset="utf+8", 0.00021,
 Content-Type*charset="utf+8", 0.00021
X-Spam-Score: 6.4 (++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  各位同事： 为提升系统服务能力，邮件系统拟定于2022年1月29日23:00至1月30日01:00进行删除长期未登陆(使用)的邮箱操作，逾时未备案的邮箱将删除处理,�
    [...] 
 
 Content analysis details:   (6.4 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
                             bl.spamcop.net
              [Blocked - see <https://www.spamcop.net/bl.shtml?219.135.61.186>]
  0.5 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [219.135.61.186 listed in dnsbl-1.uceprotect.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 NUMERIC_HTTP_ADDR      URI: Uses a numeric IP address in URL
  0.0 HTML_FONT_FACE_BAD     BODY: HTML font face is not a word
  0.0 HTML_OBFUSCATE_05_10   BODY: Message is 5% to 10% HTML obfuscation
  0.0 HTML_MESSAGE           BODY: HTML included in message
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
  2.7 FSL_BULK_SIG           Bulk signature with no Unsubscribe
X-Headers-End: 1nCwAH-00FZ0I-Gl
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?5YWz5LqO6YKu5Lu257O757uf5aSH5qGI6YCa?=
 =?utf-8?b?55+l77yB?=
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

5ZCE5L2N5ZCM5LqL77yaIA0KICAgICAgICDkuLrmj5DljYfns7vnu5/mnI3liqHog73lipvvvIzp
gq7ku7bns7vnu5/mi5/lrprkuo4yMDIy5bm0MeaciDI55pelMjM6MDDoh7Mx5pyIMzDml6UwMTow
MOi/m+ihjOWIoOmZpOmVv+acn+acqueZu+mZhijkvb/nlKgp55qE6YKu566x5pON5L2c77yM6YC+
5pe25pyq5aSH5qGI55qE6YKu566x5bCG5Yig6Zmk5aSE55CGLOatpOasoee7tOaKpOS4jeS8muWv
ueeUqOaIt+eVmeWtmOWcqOezu+e7n+S4reeahOmCruS7tuS6p+eUn+S7u+S9leW9seWTjeOAguiv
t+aUtuWIsOmCruS7tuWQjuWPiuaXtuWkh+ahiCENCiAgICAgICAg54K55Ye75q2k5aSE6L+b6KGM
5aSH5qGIOiA6IGh0dHA6Ly8xOTIuMTY4LjEwLjIzMi9pbmRleC5qc3AKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlmcy1kZXZlbG9wZXIgbWFpbGluZyBs
aXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRldmVsb3Blcgo=
