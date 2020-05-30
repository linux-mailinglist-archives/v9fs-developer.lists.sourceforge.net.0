Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C1FCD1E9444
	for <lists+v9fs-developer@lfdr.de>; Sun, 31 May 2020 00:32:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jfA1z-0007Cv-O0; Sat, 30 May 2020 22:32:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <deanj00@acceswealthservice.xyz>) id 1jfA1x-0007Cb-T1
 for v9fs-developer@lists.sourceforge.net; Sat, 30 May 2020 22:32:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Mime-Version
 :Message-ID:Date:Subject:To:From:Reply-To:Sender:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=td/1klW8T5Eyprv/u3iSt1Uq3pUK6RiW9JQei4VLqgo=; b=GIwIMl7Guaaxz0/vlq+5gcpWPr
 nAk+Ek1bQzmeym1tFi85wDHYg+Ny+BMxp+XY7Iy9aZis882cXikRFq5YMCn0zMcw+0kHFOOeCNarl
 LClLm/EF66dGm0ZmL46i278wHsDua+BgTxJ6tDMYtzpmGm7NVxaIbCrS7PE/OozWMil0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:Date:
 Subject:To:From:Reply-To:Sender:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=td/1klW8T5Eyprv/u3iSt1Uq3pUK6RiW9JQei4VLqgo=; b=h
 TuzSNv9nRFw/d5IskWTVtfNhYfXS1/E0gkvKnyjuaSgFORTVtHFfbfUkLo8RNozou19rM+ATppXVI
 DnT5VC3UlBm5+Jr7+X46tgOQbqbasSecjDJeUy38RHkDFOo06qOgrz+cQ4XwltQsrQ6wGZkrawbNB
 w7YP3Wt5ROfZPzfo=;
Received: from [46.166.185.243] (helo=host.acceswealthservice.xyz)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1jfA1w-00EJA8-Jh
 for v9fs-developer@lists.sourceforge.net; Sat, 30 May 2020 22:32:41 +0000
Received: from acceswealthservice.xyz (2t5j.w.time4vps.cloud [212.24.97.110])
 by host.acceswealthservice.xyz (Postfix) with ESMTPA id 4CA57F5CA6
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 31 May 2020 00:28:38 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 host.acceswealthservice.xyz 4CA57F5CA6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=acceswealthservice.xyz; s=default; t=1590877718;
 bh=td/1klW8T5Eyprv/u3iSt1Uq3pUK6RiW9JQei4VLqgo=;
 h=Reply-To:From:To:Subject:Date:From;
 b=OZcjJWsPI1o46iNdPq7yZkI79/NOmBc7nkd//3WfQ/XuFYGXM/f71KM+r9cTBTa42
 JUSOzebBmjwc6JLgGw9GXRT3TqUel9aMoTseiw4ZAyPhF9XvjD6D2SIE1yBMH4wVij
 4oSidbnSLDD46tM1d60TuTfIP7hfUOHt7CU6DOXk=
DKIM-Filter: OpenDKIM Filter v2.11.0 host.acceswealthservice.xyz 4CA57F5CA6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=acceswealthservice.xyz; s=default; t=1590877718;
 bh=td/1klW8T5Eyprv/u3iSt1Uq3pUK6RiW9JQei4VLqgo=;
 h=Reply-To:From:To:Subject:Date:From;
 b=OZcjJWsPI1o46iNdPq7yZkI79/NOmBc7nkd//3WfQ/XuFYGXM/f71KM+r9cTBTa42
 JUSOzebBmjwc6JLgGw9GXRT3TqUel9aMoTseiw4ZAyPhF9XvjD6D2SIE1yBMH4wVij
 4oSidbnSLDD46tM1d60TuTfIP7hfUOHt7CU6DOXk=
From: Dean <deanj00@acceswealthservice.xyz>
To: v9fs-developer@lists.sourceforge.net
Date: 31 May 2020 01:28:37 +0300
Message-ID: <20200531012837.866675379E93FFCD@acceswealthservice.xyz>
Mime-Version: 1.0
X-Spam-Score: 5.0 (+++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [46.166.185.243 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 1.1 DKIMWL_BL              DKIMwl.org - Blacklisted sender
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jfA1w-00EJA8-Jh
Subject: [V9fs-developer] Investment
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
Reply-To: deanj22@accesswealthservices.online
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Good evening. I am Dean Johnston, a broker working with Access 
Wealth Services. I am contacting you because one of my high 
profile clients is interested in investing abroad and has asked 
me to look for individuals and companies with interesting 
business ideas and companies that he can invest in. He wants to 
expand his portfolio and has interest in investing a substantial 
amount of asset abroad. I got your contact (along with other 
contacts) through an online business directory and I thought I'd 
contact you to see if you are interested in this opportunity.

Please indicate your interest by replying back to this email. 
Once I get your response, I will give you more details and we can 
plan a strategy that will be beneficial to all parties.

Best regards

D Johnston
Access Wealth Services
+27319400855


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
