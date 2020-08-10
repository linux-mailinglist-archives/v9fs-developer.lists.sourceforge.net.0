Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C22EA2402E9
	for <lists+v9fs-developer@lfdr.de>; Mon, 10 Aug 2020 09:41:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1k52R6-0007b8-N3; Mon, 10 Aug 2020 07:41:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <info@jangosh.com>) id 1k52R5-0007aw-JU
 for v9fs-developer@lists.sourceforge.net; Mon, 10 Aug 2020 07:41:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Reply-To:Date:From:To:Subject:
 Content-Description:Content-Transfer-Encoding:MIME-Version:Content-Type:
 Sender:Cc:Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iuCO3trWiPK+Sl4i6gYUEBYLhFWkKqFoDnIYtKrLO4A=; b=OrVDTeIxPXEBavRs04uwWvMMC/
 IkCSkUi1DVcL/KKVlYQeb0XvQIDS6HcFD+EI57c5rLFMR/82YY45a2IiWnb+lx5lH0Jto453dtkzx
 /7lktmP/SHKPYtgkrr1sdKy+/Ch5Z7RsYkligHUznv8F8JloelTyEMubtj+W2YhVkKZw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Reply-To:Date:From:To:Subject:Content-Description:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Cc:Content-ID:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iuCO3trWiPK+Sl4i6gYUEBYLhFWkKqFoDnIYtKrLO4A=; b=mb14h60jSL+zxw3QrQJn3oNLNH
 Q3aKaVAyb8D83gnDPzvnpLe7D7dmb94ZY2CPyZse2A9PPtMBt0OGDrN5THOWwdG9/oiOiMbteWVwJ
 wwXtVqKm/DH8opydgjPSz3tJRGemb/NPj8gqwH6zU0NnK0J78xp0SrDAkFRzimUteB2c=;
Received: from [104.193.252.207] (helo=DS7919209.clientshostname.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.2)
 id 1k52R4-00FBM5-AD
 for v9fs-developer@lists.sourceforge.net; Mon, 10 Aug 2020 07:41:35 +0000
Received: from [178.238.8.170] (localhost [IPv6:::1])
 by DS7919209.clientshostname.com (Postfix) with ESMTP id 3EA8496532
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 10 Aug 2020 02:14:19 -0400 (EDT)
MIME-Version: 1.0
Content-Description: Mail message body
To: v9fs-developer@lists.sourceforge.net
From: "Jangosh Group" <info@jangosh.com>
Date: Mon, 10 Aug 2020 08:14:12 +0200
Message-Id: <20200810061420.3EA8496532@DS7919209.clientshostname.com>
X-Spam-Score: 6.2 (++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_L4      RBL: Bad reputation (-4)
 [104.193.252.207 listed in bl.mailspike.net]
 1.7 DEAR_SOMETHING         BODY: Contains 'Dear (something)'
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k52R4-00FBM5-AD
Subject: [V9fs-developer] Product Inquiry
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
Reply-To: Jangosh Group <jangosh.group@hotmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Dear Sir/ Madam

Do you export your product, if yes? send us your export list or Catalog.

We want to purchase your product, what is your MOQ.

Your quick response would be appreciated.

Best regards,
Miss Maria Gonzales
Jangosh Group LLC
(Purchasing Manager)
For the Company.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
