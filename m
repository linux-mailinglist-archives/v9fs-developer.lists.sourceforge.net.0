Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0042049DB6B
	for <lists+v9fs-developer@lfdr.de>; Thu, 27 Jan 2022 08:27:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nCzBZ-0000iT-Ld; Thu, 27 Jan 2022 07:27:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <zhangp@buptnet.edu.cn>) id 1nCzBY-0000iJ-Ms
 for v9fs-developer@lists.sourceforge.net; Thu, 27 Jan 2022 07:27:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:Subject:To:From:
 Message-ID:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kQsWxQ1Qv6BQ2N4/czkg/Egpmy+0zDujYv3jyOGlDEU=; b=RqSuH8OjtzfTQ97+bAo6E6j1ML
 QBMYjsCd04aCVRe1ofP82SydHBQNTDGENYFItbEEfu0UCo2+a1e0ZzW5aYNtnfwEohr5PMsHWyNJW
 83hs+8YE6rrJAnhxnxZV8Lu0JMnweVg7RUnCssSdfIOCRcRH52kwopsOoBcW68Ed8X5A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:Subject:To:From:Message-ID:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=kQsWxQ1Qv6BQ2N4/czkg/Egpmy+0zDujYv3jyOGlDEU=; b=S
 t/uIk/h9uIrhvNpVf6CFEHwW/35CBeNnzAOVx1WSBdiPrH3xnC1lNlZ6son6BMnl9vPqRdk92ZVso
 qwlpK2xy686Yfy+toDYnPHY2qsDmXpPsAPd3Ott4kgMM7RWGz0BRkh53YHzy4+3MWdWKVS2CQcbRF
 xVlE0cTEEE0HOwvY=;
Received: from [202.205.253.249] (helo=sammy.buptnet.edu.cn)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps (TLSv1:DHE-RSA-AES256-SHA:256)
 (Exim 4.92.3) id 1nCzBV-00Fmwj-VN
 for v9fs-developer@lists.sourceforge.net; Thu, 27 Jan 2022 07:27:11 +0000
Received: (qmail 1786 invoked by uid 89); 27 Jan 2022 07:21:42 -0000
Received: by simscan 1.2.0 ppid: 1780, pid: 1783, t: 0.0769s
 scanners: attach: 1.2.0
Received: from unknown (HELO gaav) (zhangp@114.99.10.215)
 by 0 with SMTP; 27 Jan 2022 07:21:42 -0000
Message-ID: <57D320863DD254D1DFEE2139FF640AA5@gaav>
From: =?utf-8?B?SVTov5Dnu7Tpg6g=?= <zhangp@buptnet.edu.cn>
To: <v9fs-developer@lists.sourceforge.net>
Date: Thu, 27 Jan 2022 15:21:27 +0800
MIME-Version: 1.0
X-Priority: 1
X-MSMail-Priority: High
X-Mailer: Microsoft Outlook Express 6.00.2900.5512
X-MimeOLE: Produced By Microsoft MimeOLE V6.00.2900.5512
X-Spam-Score: 7.5 (+++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  各位同事： 为提升系统服务能力，邮件系统拟定于2022年1月29日23:00至1月30日01:00进行删除长期未登陆(使用)的邮箱操作，逾时未备案的邮箱将删除处理,�
    [...] 
 
 Content analysis details:   (7.5 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.5 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
                             [202.205.253.249 listed in dnsbl-1.uceprotect.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.0 NUMERIC_HTTP_ADDR      URI: Uses a numeric IP address in URL
  0.0 HTML_FONT_FACE_BAD     BODY: HTML font face is not a word
  0.0 HTML_OBFUSCATE_05_10   BODY: Message is 5% to 10% HTML obfuscation
  0.0 HTML_MESSAGE           BODY: HTML included in message
  2.0 PYZOR_CHECK            Listed in Pyzor
                             (https://pyzor.readthedocs.io/en/latest/)
  1.0 HDR_ORDER_FTSDMCXX_NORDNS Header order similar to spam
                             (FTSDMCXX/boundary variant) + no rDNS
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
  2.7 FSL_BULK_SIG           Bulk signature with no Unsubscribe
X-Headers-End: 1nCzBV-00Fmwj-VN
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
