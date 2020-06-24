Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D23E42069F4
	for <lists+v9fs-developer@lfdr.de>; Wed, 24 Jun 2020 04:10:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jnusD-0000Yd-8j; Wed, 24 Jun 2020 02:10:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <karen@pei.com>) id 1jnusC-0000YX-DC
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jun 2020 02:10:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Reply-To:MIME-Version:Content-Type:
 To:Subject:From:Sender:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GIKVmJip6FY+Zfg21PRU4af1HWJkvodybmZJuRnSOiI=; b=LtSslCl412MKITQ/vlz7bPlTY2
 yuo2p8EV3SwXlSJavt29waz9vxgBYsJzHdI2cOYcBDedpqDLttkx5vLcjvghbPpI0MsBLWa58D5FG
 uR3lPKGyJM1abzTYnJobU2D6lwRz0KCbD3gWPLI0WOdKE8IzSzxzLae2TK9jm/Zh4G84=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Reply-To:MIME-Version:Content-Type:To:Subject:From:Sender
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=GIKVmJip6FY+Zfg21PRU4af1HWJkvodybmZJuRnSOiI=; b=L
 YF7GvNP9EV8KJSYAgJ3if4OoPgalfqyj0L5mPlMfb999ln9RfFFNDm3W+ZjgHpRGhYnwgb2pV0Jnh
 /6EVWwrtKmXwli54tv7sKL0YSKzPFYdiafRFE5WD42vbrbJehpwJix+1rFYPHra4lLp0IqpfDZ5Q6
 uuuZczdDdMONcCUc=;
Received: from smtp06.smtpout.orange.fr ([80.12.242.128]
 helo=smtp.smtpout.orange.fr)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps (TLSv1:DHE-RSA-AES128-SHA:128)
 (Exim 4.92.2) id 1jnus9-00DZWw-Hc
 for v9fs-developer@lists.sourceforge.net; Wed, 24 Jun 2020 02:10:48 +0000
Received: from DESKTOP-Q5JCF6G ([90.47.72.165]) by mwinf5d41 with ME
 id uq9z2200B3ZxppE03qAbxT; Wed, 24 Jun 2020 04:10:37 +0200
X-ME-Helo: DESKTOP-Q5JCF6G
X-ME-Date: Wed, 24 Jun 2020 04:10:37 +0200
X-ME-IP: 90.47.72.165
From: "Ms Karen Ngui" <karen@pei.com>
To: <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Date: Tue, 23 Jun 2020 19:10:36 -0700
Message-Id: <2335202006101988525D6F8C$3C886E1E11@DESKTOPQJCFG>
X-Spam-Score: 4.7 (++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [80.12.242.128 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [80.12.242.128 listed in wl.mailspike.net]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (invoicekngui054[at]gmail.com)
 1.0 HTML_MESSAGE           BODY: HTML included in message
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1jnus9-00DZWw-Hc
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] To ~~~ v9fs-developer@lists.sourceforge.net
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
Reply-To: invoicekngui054@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


Kindly confirm if you got my business collaboration In-mail sent to you via LinkedIn.

Thanks. Mrs. Ngui

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
