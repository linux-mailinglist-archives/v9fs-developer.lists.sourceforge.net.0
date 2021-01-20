Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5D92FCA98
	for <lists+v9fs-developer@lfdr.de>; Wed, 20 Jan 2021 06:27:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Message-Id:Content-Transfer-Encoding:
	Content-Type:Cc:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive
	:List-Unsubscribe:List-Id:Subject:Date:To:Content-Description:MIME-Version:
	Sender:Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:
	Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=caM4TAvjOBjTLns+Z7dW8VURwVLeAkvG7BpFdS/GveM=; b=Nbkc/j4tI02mVUvxxLvGMLS0JG
	XAZSW6hv5hwPfFHfuTl1hwX/GIXah3HbGmgVJru28+CO5jB8nNLmqbKRAnynaf//IM1toVx/buv+n
	SPxaPnSYe/tUFB0pjBVd0gaV36KkgX/XE+gJHEprsnMnRXEsq9oDm7vjtbV9dWSlGGqk=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1l2627-0005uM-Pa; Wed, 20 Jan 2021 05:27:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sales@aqucknews.life>) id 1l2626-0005uE-9x
 for v9fs-developer@lists.sourceforge.net; Wed, 20 Jan 2021 05:27:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Reply-To:Date:From:To:Subject:Content-Description:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Message-ID:Cc:
 Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:
 Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WfLfCd6vfASkF5hpop4o8ApVm8sKct+0XC+fxdhfM3M=; b=NkrfYhsHWqzNevJcNa3yIvkGJg
 xb36csSEQWkyqGydv5uNkWfFi17EiuRBfztLT+rnbFvvr27QcnnULMBcuuNlg0t6XXdHVu5OQ/SnI
 lsCUXNQATGFLsCnGWPrhX8DeTjOlsW4zjhzXiSWxWjkCCq4uo7ndoyn46ktRMAmNUaVY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ; h=Reply-To:Date:From:To:Subject:Content-Description:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Message-ID:Cc:
 Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:
 Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=WfLfCd6vfASkF5hpop4o8ApVm8sKct+0XC+fxdhfM3M=; b=UvxU9jwQ7630ts4ftyVA58FNeS
 A/biBEI7b2P0BW8ITxiSVVRpn3z/iOOscKR5nc4jpWA6VGDJv/WSjj80MiPdGMv5vI+OsvjpRCmL9
 WHgV4xpgT78QdUIExJUW2+c3kICVq6ErrEqeO9mzKqEgVI5PjUVC/zRwX7YbmBnGeDvk=;
Received: from aqucknews.life ([106.75.129.228])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1l261r-009PAZ-Gd
 for v9fs-developer@lists.sourceforge.net; Wed, 20 Jan 2021 05:27:54 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=default; d=aqucknews.life;
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Content-Description:Subject:To:From:Date:Reply-To;
 i=sales@aqucknews.life; bh=fRBePGpu2Q4waKYYg6qiwyqbXoM=;
 b=km4AGZl99q8cirHvRhXBW58r5n8TXTvm2/b765AlQ3p70wvSBk6dxwM3nQ/PFayPQ+WNsgNJirVi
 FCgZvk+9FcEC2jE/0ieyqvk2fy3BVxhethbtqHoGzlax3UAWtQDCfvSojhQwFoqpHxBqL4s3w8Rv
 nwY6kDqb+SnCtkJ+ASQ=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=default; d=aqucknews.life; 
 b=VgB6+pX9M1gC1vSSdOIYZXaXgfFoxuY9SAq2JM6GDdOpbltxq7iPShadN3RgTIJt1ejlIZIm6EyS
 Iaa7qlkYcQ09HnTarWOJ/2jdAOjsdll1h7iG2AJl/aUzlyZiT5oZI48gfX6c8fWfKr9CIOXCRxuH
 3ulVQ0OKUBuSR5MR7Xo=;
MIME-Version: 1.0
Content-Description: Mail message body
To: v9fs-developer@lists.sourceforge.net
Date: Tue, 19 Jan 2021 21:27:17 -0800
X-Spam-Score: 7.2 (+++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [106.75.129.228 listed in zen.spamhaus.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in digit
 (jacksonjrc75[at]gmail.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 MISSING_MID            Missing Message-Id: header
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
X-Headers-End: 1l261r-009PAZ-Gd
Subject: [V9fs-developer] my subject
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
From: sales--- via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: jacksonjrc75@gmail.com
Cc: sales@aqucknews.life
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: v9fs-developer-bounces@lists.sourceforge.net
Message-Id: <E1l2627-0005uM-Pa@sfs-ml-2.v29.lw.sourceforge.com>

Ist diese E-Mail-Adresse aktiv? Wir haben Ihnen fr=FCher eine Nachricht
bez=FCglich des Anspruchs auf Ihre Spende gesendet. Bitte best=E4tigen Sie
Ihre E-Mail-Adresse und kontaktieren Sie uns per E-Mail

  Freundliche Gr=FC=DFe
Mr.Jackson jr


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
