Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 058D592E1AB
	for <lists+v9fs-developer@lfdr.de>; Thu, 11 Jul 2024 10:12:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1sRouJ-0000vc-EZ;
	Thu, 11 Jul 2024 08:12:03 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <martin.juve@revenueraft.com>) id 1sRouH-0000vN-V4
 for v9fs-developer@lists.sourceforge.net;
 Thu, 11 Jul 2024 08:12:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Subject:To:From:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Xad5m6pvfXzLcOWtk53uyULRr5Q19xWPKHsyltUJEyg=; b=XFGZGs3lEaID+GbuuMFG2JyPOS
 jekQivC2TCcBEvR6+8sR1hYlAhS/mrbeyeOwAXHK4WShNv3JzqW6qzcoIioecMGAl84+L1cQCFF8h
 EQLNkWBFOTO+nMITikWB+mzBatUiaQit00FEjzTjCWrgOLRO8KzJW5Qa3gsezcY1nI/Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:To:From:Date:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Xad5m6pvfXzLcOWtk53uyULRr5Q19xWPKHsyltUJEyg=; b=T
 ofK2fgKqFyBfFbKXsy8bh6BT/ZNLLy6OrpGhHKtvDVBRixdff8EqtV0nT1f4XjVUKuEB5qRchuND3
 oSzA/Ul5gTcIafASGka7mcPq7Lp0MLXGZrD16mY2Svp6yiBJHaUIEpa6LhiItQQTsfDt6s9GJj1KA
 q3REKxJ+3LoBv27k=;
Received: from mail.revenueraft.com ([51.210.151.11])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1sRouH-0002Dz-AD for v9fs-developer@lists.sourceforge.net;
 Thu, 11 Jul 2024 08:12:02 +0000
Received: by mail.revenueraft.com (Postfix, from userid 1002)
 id 7C3BA256A3; Thu, 11 Jul 2024 08:11:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=revenueraft.com;
 s=mail; t=1720685498;
 bh=Xad5m6pvfXzLcOWtk53uyULRr5Q19xWPKHsyltUJEyg=;
 h=Date:From:To:Subject:From;
 b=ZR98QAFbiksp5PDprE7i/rZL3sFahcZb9JvDh+bTTILb/mepYj1prDvLzZDiqPw3I
 QyDm4hAMPbtMzchm0wKFaUXdNnJPRDGTzpRFZrjgnTU6+TjC2CCV+vjeXt4HFmG74y
 S2DujpgmpjoyYB103UZ5jDxD0NIz1Bhd+YpBpQy933ZJkrPu7hra6SSzEsTfo0RsQx
 0XdwyjGqB+Y4TVRxanIwm4uCZZINUjMGXWjk2x6q2MSuh9RuU8di9CRpXpvMMeP8Xy
 3rZ4thdTsMoku3G69tluB2VXx7jF+tBsTpz+CH38fJVz3PbGrQ0rJyNRqsu8Df0dD1
 Xc4l63F/WNU8A==
Received: by mail.revenueraft.com for <v9fs-developer@lists.sourceforge.net>;
 Thu, 11 Jul 2024 08:11:10 GMT
Message-ID: <20240711064500-0.1.19.3tsw.0.3ui7o2hrgl@revenueraft.com>
Date: Thu, 11 Jul 2024 08:11:10 GMT
To: <v9fs-developer@lists.sourceforge.net>
X-Mailer: mail.revenueraft.com
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, Did you know that you don't have to rent office space,
    create an entire software infrastructure, and build a professional development
    team on your own? Project planning, cost estimation, prototyping, software
    development, UI/UX design – our company assembles a multifunctional team
    tailored to your project's needs, manages the process, development, [...]
    
 
 Content analysis details:   (-5.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [51.210.151.11 listed in list.dnswl.org]
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: revenueraft.com]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [51.210.151.11 listed in bl.score.senderscore.com]
  0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                          [51.210.151.11 listed in sa-trusted.bondedsender.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [51.210.151.11 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1sRouH-0002Dz-AD
Subject: [V9fs-developer] Question from developers
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
From: Martin Juve via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Martin Juve <martin.juve@revenueraft.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

SGksCgpEaWQgeW91IGtub3cgdGhhdCB5b3UgZG9uJ3QgaGF2ZSB0byByZW50IG9mZmljZSBzcGFj
ZSwgY3JlYXRlIGFuIGVudGlyZSBzb2Z0d2FyZSBpbmZyYXN0cnVjdHVyZSwgYW5kIGJ1aWxkIGEg
cHJvZmVzc2lvbmFsIGRldmVsb3BtZW50IHRlYW0gb24geW91ciBvd24/CgpQcm9qZWN0IHBsYW5u
aW5nLCBjb3N0IGVzdGltYXRpb24sIHByb3RvdHlwaW5nLCBzb2Z0d2FyZSBkZXZlbG9wbWVudCwg
VUkvVVggZGVzaWduIOKAkyBvdXIgY29tcGFueSBhc3NlbWJsZXMgYSBtdWx0aWZ1bmN0aW9uYWwg
dGVhbSB0YWlsb3JlZCB0byB5b3VyIHByb2plY3QncyBuZWVkcywgbWFuYWdlcyB0aGUgcHJvY2Vz
cywgZGV2ZWxvcG1lbnQsIGFuZCBicmluZ3MgeW91ciBpZGVhIHRvIGxpZmUuCgpJJ2QgYmUgaGFw
cHkgdG8gaGVhciBhYm91dCB5b3VyIG1haW4gY3JpdGVyaWEsIG5lY2Vzc2FyeSBza2lsbHMsIGFu
ZCB0ZWFtIGNvbXBldGVuY2llcy4gQ2FuIHdlIHRhbGs/CgoKQmVzdCByZWdhcmRzCk1hcnRpbiBK
dXZlCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KVjlm
cy1kZXZlbG9wZXIgbWFpbGluZyBsaXN0ClY5ZnMtZGV2ZWxvcGVyQGxpc3RzLnNvdXJjZWZvcmdl
Lm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby92OWZzLWRl
dmVsb3Blcgo=
