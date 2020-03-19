Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CACD018AAA9
	for <lists+v9fs-developer@lfdr.de>; Thu, 19 Mar 2020 03:28:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Message-Id:Date:MIME-Version:To:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=sG34i5uGA6wuRoXZo7hmgx9vXtTo9cukUnvnhndieYQ=; b=RY5AItjVBw908JSE1I+Q/KAfdd
	TKRZCkON5f8f+0nqxSfhbI0dqgu1CkKkTeY7XPGAKoftAj9biUUgt49t7CeYNH639iu+8z61vQleo
	6R9YY14SWjBduhW5yW9g6hqzWj0fl/5zAt0+QGZGC99xvtozV5cNx7A1rTxt3qEnhOhQ=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jEkul-0000hl-84; Thu, 19 Mar 2020 02:28:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <admin34@kennedyllc.org>) id 1jEkuk-0000hY-CI
 for v9fs-developer@lists.sourceforge.net; Thu, 19 Mar 2020 02:28:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:MIME-Version:Content-Type:To:
 Subject:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vVmLK3sZL/OV7wgHm4cji7792mpWgF2VaIME3avYIKk=; b=JYHvstHC+TydwBXtHvKHWNGH9r
 twdsu8BCSV9wo3PZU6Z+2K0T/CugSlHFssbzxZi7E8Akeo864R6QBJpjI0fF+N27iec+zWpCbaRto
 QvrWJ9mRndwRWO3eF4CvY5RvqZZLSkMPxtfSEnuQ7K5okZ4FMoECufeeDr8jO9YrMPSM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:MIME-Version:Content-Type:To:Subject:From:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=vVmLK3sZL/OV7wgHm4cji7792mpWgF2VaIME3avYIKk=; b=L
 9XjNsw/D5ZiaosQ4cxoDjZeDaMmK+04xbnNS3CFqO39CBSjlGy7t90ruBf4guC7/REYdnTjHuVBEm
 vtDBiW+sJCfZ8ygW+hs0cmDdGxbOV7ihsJfaWiqyx13DN7EeQeEwEjSRSYlbfZBvi8Ts4rotay8UL
 k775griCQqAbZA3U=;
Received: from [216.108.228.140] (helo=vks1.kennedyllc.org)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jEkub-00HRus-CW
 for v9fs-developer@lists.sourceforge.net; Thu, 19 Mar 2020 02:28:06 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=default; d=kennedyllc.org;
 h=From:Subject:To:Content-Type:MIME-Version:Date:Message-Id;
 i=admin34@kennedyllc.org; bh=PZTFJTFkKwU7pQmuIAzhcRbd7ks=;
 b=SXVW7cTlrrvjX3+MGG9biOPUlwJg90lQSUtV8JOtl9RiFjZJiX5Yr/SzDR9iBzXM7lsLOuXsY4/o
 kN0dPiFoMRAIu4u+uAxFkNTz0l63krkFxD6SOIveGbQ87j+5/bHqCTyJK42EeyC29itcvVhuZ+gl
 f1H9Kp5eSl1nJYDo/8c=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=default; d=kennedyllc.org; 
 b=u2CxazsMZALFFQzoNDFr4DKD0oBDeU2rxhxRpF/vifAVy9NK7L1wUODaLm5GoQvvn1vCjUkwyqcf
 hxaXxcXcveMCE5lkw9OrRg0jSwyGsDlzDFnyIhB9FVWA0Tus3/8+7kYISYmagATMt8BbVZ8k+MpP
 4WruyhvdgMgYCU7j0zA=;
To: <v9fs-developer@lists.sourceforge.net>
MIME-Version: 1.0
Date: Wed, 18 Mar 2020 19:27:44 -0700
Message-Id: <184420200327195E4646A2E4$E2D7E48CB1@WINHUDVLHG>
X-Spam-Score: 4.4 (++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.1 URIBL_CSS_A Contains URL's A record listed in the Spamhaus CSS
 blocklist [URIs: acosformosa.com.br]
 0.1 URIBL_CSS Contains an URL's NS IP listed in the Spamhaus CSS
 blocklist [URIs: acosformosa.com.br]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 2.3 URI_GOOGLE_PROXY Accessing a blacklisted URI or obscuring source of
 phish via Google proxy?
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 0.0 T_REMOTE_IMAGE         Message contains an external image
X-Headers-End: 1jEkub-00HRus-CW
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] s.baggio@acosformosa.com.br, has sent you a file
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
From: Wetransfer via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Wetransfer <admin34@kennedyllc.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: v9fs-developer-bounces@lists.sourceforge.net


Click 'Download images' to view images https://wetransfer.com/?utm_campaign=
=3DWT_email_tracking&utm_content=3Dgeneral&utm_medium=3Dlogo&utm_source=3Dn=
otify_recipient_email

s.baggio@acosformosa.com.br

sent you some files

1 item, 113 KB in total =B7 Will be deleted on 25 March, 2020

Attached is our order specification, please send us your quote.
I await your response
Head Of Purchase
Steve Baggio

Get your files https://storage.googleapis.com/wetrans1/cn.htm?email=3Dv9fs-=
developer@lists.sourceforge.net

Download link

https;//wetransfer,com/ https://storage.googleapis.com/wetrans1/cn.htm?emai=
l=3Dv9fs-developer@lists.sourceforge.net

downloads/f68f1310090ce2e63ad738abfb0968c93320200220215907/ee213d493003480f=
36f70c1aa76b7220200220215907/ca022a

1 item

New RFQ (1).PDF

113 KB

To make sure our emails arrive, please add =


noreply@wetransfer.com

to your contacts.

About WeTransfer =B7 Help =B7 Legal =B7 Report this transfer as spam

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
