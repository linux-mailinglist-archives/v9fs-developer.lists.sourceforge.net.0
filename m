Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ECCE7F4314
	for <lists+v9fs-developer@lfdr.de>; Wed, 22 Nov 2023 11:03:25 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1r5k4n-0002ix-Rj;
	Wed, 22 Nov 2023 10:03:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tom@komandu.com>) id 1r5k4Y-0002iq-Ev
 for v9fs-developer@lists.sourceforge.net;
 Wed, 22 Nov 2023 10:03:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Message-ID:Mime-Version:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZC/SMyA9uzM3ammQ8cF5D/7chTMfGrDv/UUkY1vsxVM=; b=I3SOeMpl/WDEmLHQK3tmK/+/3w
 ZLFxEwmer7hQLC34WaaO9MaMzialrasHVWb8+Shlr0LQHig05gOnKPTEm/j7e3VkbD2bm1tVQNtBJ
 22OgHqPi7qn4qqV7IgWroMo/ZzxHqUMdn1Q+EC5bV/kyV+NDV3GUc150BkzhRDjl9zjU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Message-ID:Mime-Version:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ZC/SMyA9uzM3ammQ8cF5D/7chTMfGrDv/UUkY1vsxVM=; b=g
 n3Mj73mF4bnuFw+a/pQIUb0nL6pUKUGjUp4sqkDmqaGUYIbIosay/aCSHVoOhD4mJ3WIYbb4OfyLh
 Yt4P96etA+HgFftQ6NGkQYqM1YIXGSVlUaxzU9rcEgms0RszVj24vsP+ZCqPF/cJIfBKgnWaAxacW
 Ukr9xWSw9yTBBlm4=;
Received: from mail3.komandu.com ([192.3.121.12])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1r5k4U-0005mq-GW for v9fs-developer@lists.sourceforge.net;
 Wed, 22 Nov 2023 10:03:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default; d=komandu.com;
 h=Date:From:To:Subject:Mime-Version:Message-ID:Content-Type; i=tom@komandu.com;
 bh=ZC/SMyA9uzM3ammQ8cF5D/7chTMfGrDv/UUkY1vsxVM=;
 b=0dDPMye08VEtId41adHDbccKkbcSeO/rbvN0R/xRmccVwVlDLEUE1qgs/h5t28RktIEyJolEyBBZ
 d7nzc7mH7CaaQ3cQMsDS8LgcLZjqgBK0DrUJo10kKIfALOAuZOMj4ZfMmb7IIruCoH1nAGhhl8QI
 QlNyrs9IjMWep1S6pVw=
Date: Tue, 21 Nov 2023 16:13:38 +0100
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
X-Has-Attach: no
Mime-Version: 1.0
Message-ID: <202311211613497273771@komandu.com>
X-Spam-Score: 8.0 (++++++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dear Emma, good night..2yUU Dear Emma, good night..2yUU 
 Content analysis details:   (8.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 URIBL_DBL_PHISH        Contains a Phishing URL listed in the Spamhaus
 DBL blocklist [URIs: komandu.com]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [192.3.121.12 listed in zen.spamhaus.org]
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
 bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?192.3.121.12>]
 0.1 URIBL_CSS_A Contains URL's A record listed in the Spamhaus CSS
 blocklist [URIs: komandu.com]
 0.8 DATE_IN_PAST_12_24     Date: is 12 to 24 hours before Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_FONT_LOW_CONTRAST BODY: HTML font color similar or
 identical to background
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1r5k4U-0005mq-GW
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] tom
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
From: Tom via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Tom <tom@komandu.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


Dear Emma, good night..2yUU

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
