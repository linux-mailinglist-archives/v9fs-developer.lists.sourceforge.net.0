Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A8261A2391D
	for <lists+v9fs-developer@lfdr.de>; Fri, 31 Jan 2025 05:00:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1tdiD2-0006U3-US;
	Fri, 31 Jan 2025 04:00:48 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <info@serviciosfusionar.com.ar>) id 1tdiCz-0006Tv-Cj
 for v9fs-developer@lists.sourceforge.net;
 Fri, 31 Jan 2025 04:00:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-transfer-encoding:Content-type:Date:Subject
 :Reply-To:To:From:Mime-Version:Message-Id:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0Wx+vMeB4+Yr+Ixmn/JyF9y1jdNqQfiHuQ+urJgpfMo=; b=RhatSydYHXl43J4rjX/nzZ/z1h
 2b5dpLxpycLgpBnJDZDCWELy0n6Ya2qBa8sXc8HtwMz+PFkdvFqpvPEd/CRCMAnWO3h0Hm71WuLG8
 fKjDbSU4c5uAavDXVvODsAm4QQ+LEuazruEf0lIVhSxw4R6XvGpEi3WKh/SxyXdL4srs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-transfer-encoding:Content-type:Date:Subject:Reply-To:To:From:
 Mime-Version:Message-Id:Sender:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=0Wx+vMeB4+Yr+Ixmn/JyF9y1jdNqQfiHuQ+urJgpfMo=; b=T
 8eGnjM8GIV4Ed/zLMOnbZWuR4rDXZMFs8aIRRPrWdNtP8DZG6z/1dnXk3aygQM5PjEtUU4sGtAxWg
 XyQ6wKgdJnzsfYJ05T/joOHUHAYUF6EWZzBNn37a/d9uHH02j6sFwoSEnwIMzwQsFt+xN5fHHOdFk
 FHQ2WkiKuNN8q3wI=;
Received: from ccheetah.mxout.godns.net ([200.85.159.27] helo=mx1619.godns.net)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tdiCu-0001Ui-A3 for v9fs-developer@lists.sourceforge.net;
 Fri, 31 Jan 2025 04:00:44 +0000
Received: (qmail 12463 invoked by uid 520); 31 Jan 2025 03:33:47 -0000
Authentication-Results: smtp.correoseguro.co; auth=pass (login)
Received: from [10.206.0.2] (83.115.174.34.bc.googleusercontent.com
 [34.174.115.83])
 by smtp.correoseguro.co (Haraka/2.8.13) with ESMTPA id
 173BB3F3-4DAE-4EA9-B2DF-FBFE79677ED3.1
 envelope-from <info@serviciosfusionar.com.ar> (authenticated bits=0);
 Fri, 31 Jan 2025 00:33:41 -0300
Message-Id: <jE18ym7US3CmDjRoE1INE5paap6Qa38JmepDzQvjnh0N@serviciosfusionar.com.ar>
Mime-Version: 1.0
From: "Daniel Kofi" <info@serviciosfusionar.com.ar>
To: "v9fs-developer" <v9fs-developer@lists.sourceforge.net>
Date: Thu, 30 Jan 2025 19:33:41 -0800
X-Haraka-GeoIP: NA, US
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on arg-mailout3
X-Spam-Level: **
X-Spam-Status: No, score=2.6 required=4.0 tests=DEAR_FRIEND autolearn=disabled
 version=3.3.2
X-Spam-SpamCheckerVersion: 0
DKIM-Signature: v=1; a=rsa-sha256;
 bh=0Wx+vMeB4+Yr+Ixmn/JyF9y1jdNqQfiHuQ+urJgpfMo=; c=relaxed/simple;
 d=correoseguro.co; h=from:to; s=default;
 b=Ls4h/OQ1YiMU+5/Z0BU7tS8iuoizLOYVOkECCtHpb2dnVhnNwTSRh4xU7JtXZGsR6/tEl4xDf5AOBUhXBqddDKJG01D9eaWqh6tPq1hDTxezk89ok0QOc5iYoUdZhVYs1qBW5f2CR5WGoXDSxBZYi7Za+Lz6N+dM5/sluBIF/zOPAZswH1hMJu8Krh7UBWOfGatRpN3zSy4GbiNclYi4JXMg38p7WgdDZh6ukazcAeOrWpMk+ZCW50VB5kL0qWad/fAnSoWXbYZ4i7XQYQy2kofOzTpJemxnk1KnK3mncePtb7tgAZUPO7zjUmhATHDKAd7YmBtDuLQO2YG6mvy8PA==
X-Spam-Score: 2.6 (++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Dear Friend I trust this message finds you in good spirits
 during this holiday season. Allow me to introduce myself; my name is Daniel
 Kofi, and I hold the position of Executive Director at Absa Bank [...] 
 Content analysis details:   (2.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [200.85.159.27 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [200.85.159.27 listed in sa-accredit.habeas.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.6 DEAR_FRIEND            BODY: Dear Friend? That's not very dear!
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1tdiCu-0001Ui-A3
Subject: [V9fs-developer] Confidential Business Opportunity
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
Reply-To: back-up@hibank.com.br
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Dear Friend
I trust this message finds you in good spirits during this holiday season.
Allow me to introduce myself; my name is Daniel Kofi, and I hold the position of Executive Director at Absa Bank Ghana Limited. I would like to explore a confidential business proposition that I believe could be mutually advantageous for us. If this piques your interest, I would be delighted to provide further details at your convenience.
Thank you for considering this opportunity. I look forward to your response.
Warm regards, Daniel Kofi Executive Director Absa Bank Ghana Limited




_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
