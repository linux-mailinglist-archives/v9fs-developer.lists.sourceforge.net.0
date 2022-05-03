Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B5A751847E
	for <lists+v9fs-developer@lfdr.de>; Tue,  3 May 2022 14:42:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nlrrZ-0003F0-7F; Tue, 03 May 2022 12:42:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <marco.mannatrizio@tin.it>) id 1nlrrY-0003Ej-6c
 for v9fs-developer@lists.sourceforge.net; Tue, 03 May 2022 12:42:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Reply-To:Date:From:To:Subject:Content-Description:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Message-ID:Sender:Cc:
 Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:
 Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=egpFDdIsSEVq/Vn7MjbZ969I3u/m0errgptSiQumvY8=; b=lFESx5eInv7ag3hkEvb9VsNAyA
 s3NdwcrIcT8KoPjtKI945U8BFIJ6CEKiCn+6z7NcXrg5DDHK9YDm8Sl/b0ia6Y8sjAChVcsb0T0bU
 Vxs8u339+B19YaaBFGUa5K+5rwE78x3aX6vx8oHL2jk/KFJANkfMU4kIVsW4ybU0MsZs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Reply-To:Date:From:To:Subject:Content-Description:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Message-ID:Sender:Cc:
 Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:
 Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=egpFDdIsSEVq/Vn7MjbZ969I3u/m0errgptSiQumvY8=; b=SC8jTC2Z11cY+94jtjKZDOPj+G
 +/T9HNhRL1/alOPdKLbfofUwhinRYa6MPSw+yrghoLYX/Egj3QDWXErUeBeecjITFrvVDOXW1GL0V
 EGD8pFDrUGcP7tOtnv2WbFP2OsBUt2YnPaaCiiWfgAEAop56qTfsi1noRn8F/rWY/kRE=;
Received: from mta-out-03.tin.it ([217.169.118.6])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nlrrT-00HZdg-TD
 for v9fs-developer@lists.sourceforge.net; Tue, 03 May 2022 12:42:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tin.it; s=20211207;
 t=1651581760; bh=egpFDdIsSEVq/Vn7MjbZ969I3u/m0errgptSiQumvY8=;
 h=Message-ID:Content-Type:MIME-Version:Content-Transfer-Encoding:Content-Description:Subject:To:From:Date:Reply-To;
 b=HgsWp8iWglQPSuu0AL5yA45CBtkdiyViwdDrQnV/Fvxv6bCaA935qCv4IERVB/ij8LcVN5jjH4TBifuYd70xcsdEBGDszfD60DBHVKinOd7AvvK6ZGerwHFeiWjFbaRrIKBng5F1A3wG9iKRKACN3rk2BSSp1jHW+hsir65eW68Wba2V10kKqM3RdYK8Zeqm8P0i6i9lBR+odyLgjOMlf51nIHYoNUxkWTLkpynM/vaXlByKXklDMkGcH4g8Vb77UeF5rRGM9KHlr/9Kikv963o2VCwuNaJ3sFqk0Fh9zI6Isg5DC2u+ud+Gx/BBUlLSpwZ1UZlm8WNFMeQ719H2Qg==
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgedvfedrvdejgdehgecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfvgffngfevqffokffvtefnkfetpdfqfgfvnecuuegrihhlohhuthemuceftddunecunecujfgurheptggggffuvffhffhrsehtqhdttddttddunecuhfhrohhmpedftehllhgvnhcufdcuoehmrghrtghordhmrghnnhgrthhrihiiihhosehtihhnrdhitheqnecuggftrfgrthhtvghrnhepleduheefhfehtedvfedttdffgeehffdtjeetueetjeevteefgfefuefggfefffejnecukfhppeduleegrdefuddrleekrdduuddunecuvehluhhsthgvrhfuihiivgepkedtgedunecurfgrrhgrmhephhgvlhhopegludelgedrfedurdelkedrudduudgnpdhinhgvthepudelgedrfedurdelkedrudduuddpmhgrihhlfhhrohhmpehmrghrtghordhmrghnnhgrthhrihiiihhosehtihhnrdhithdpnhgspghrtghpthhtohepuddprhgtphhtthhopehvlehfshdquggvvhgvlhhophgvrheslhhishhtshdrshhouhhrtggvfhhorhhgvgdrnhgvth
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from [194.31.98.111] (194.31.98.111) by mta-out-03.tin.it
 (5.8.807.04) (authenticated as marco.mannatrizio@tin.it)
 id 624C210703799485 for v9fs-developer@lists.sourceforge.net;
 Tue, 3 May 2022 14:42:32 +0200
Message-ID: <624C210703799485@mta-out-03.tin.it> (added by postmaster@tin.it)
MIME-Version: 1.0
Content-Description: Mail message body
To: v9fs-developer@lists.sourceforge.net
From: "Allen " <marco.mannatrizio@tin.it>
Date: Tue, 03 May 2022 05:42:32 -0700
X-Spam-Score: 4.6 (++++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  H e l l o,
 I lead family investment vehicles who want to invest
 a proportion of their funds with a trust party . Please are you interested
 in discussing investment in your sector? 
 Content analysis details:   (4.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.169.118.6 listed in list.dnswl.org]
 1.2 RCVD_IN_BL_SPAMCOP_NET RBL: Received via a relay in
 bl.spamcop.net
 [Blocked - see <https://www.spamcop.net/bl.shtml?194.31.98.111>]
 1.0 RCVD_IN_UCE1           RBL: IP Listed in UCEPROTECT Level 1
 [217.169.118.6 listed in dnsbl-1.uceprotect.net]
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [jeromehpowell411[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [marco.mannatrizio[at]tin.it]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 2.0 PYZOR_CHECK            Listed in Pyzor
 (https://pyzor.readthedocs.io/en/latest/)
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
X-Headers-End: 1nlrrT-00HZdg-TD
Subject: [V9fs-developer] opportunity
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
Reply-To: jeromehpowell411@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

H e l l o,

I lead family investment vehicles who want to invest a proportion of their funds with a trust party .

Please are you interested in discussing investment in your sector?

Please email, or simply write to me here. jeromehpowell411@gmail.com I value promptness and will make every attempt to respond within a short time.

Thank you.
Allen S.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
