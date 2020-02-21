Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 547BB166C6C
	for <lists+v9fs-developer@lfdr.de>; Fri, 21 Feb 2020 02:39:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Message-Id:Content-Type:Cc:Reply-To:From:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Date:MIME-Version:To:Sender:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9ypFJmqrNtXq+M4U08CnsnErlQclzZjntQaTWGHW3HE=; b=ipn3jB2spWvBZeIvBNNZ0ITXzJ
	Wgj2vsFM2+c6Jm5l4jjVo+9rT5UE86vtPrZWKIkvnytODBIQ1AWvuzdvmMW7GlLpXeoetMpsRNwjT
	hTulLSSwlmX/ikM52ZrQm044o2jOQ/byYGUYS01m2ZIuR5UZo+LEBAkLZNhXyPjmrQCE=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1j4xHb-0003ot-1j; Fri, 21 Feb 2020 01:39:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sales@pronewsemaillist.info>) id 1j4xHZ-0003ol-Tl
 for v9fs-developer@lists.sourceforge.net; Fri, 21 Feb 2020 01:39:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:Reply-To:MIME-Version:Content-Type:To:Subject:
 From:Sender:Message-ID:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rHhRg4Z1OGTFliOWbBIPNFKG+1+maptYN9i1SIbj8QA=; b=cMvgrsKQc+FotdL1NFYzQzYjXr
 vWWULlaORrAekoIzwWU/1VGiMhjyfXzmKRFtxICz+EpfSXK42qngHApGoI2bcv2DYy4VEdoOL4zjS
 JMD1qqJaLoS/DeFy1Jcv2nTPMn4XZ3dNltOTrzEbl2Vo89HRPw+gX4CH2LfGkSjKzGxc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:Reply-To:MIME-Version:Content-Type:To:Subject:From:Sender:Message-ID
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=rHhRg4Z1OGTFliOWbBIPNFKG+1+maptYN9i1SIbj8QA=; b=J
 8PCK8oSlDNuzWfI9pRTlXB2eo/n2Wa436r1fstFaTNvu59vgSGlLmi26FPqVrrSJTA7nQPiXTkbdJ
 j5nhWP4gRFibSP/jfJpiZ1H2zFdmiVAVIZ05vgC5+ZiJsMkldFVcrFCF2EcFwKPQTPRnKXe0nkLZM
 da4CbZXi0fHWhB6Y=;
Received: from pronewsemaillist.info ([106.75.143.47])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1j4xHY-0031fB-EU
 for v9fs-developer@lists.sourceforge.net; Fri, 21 Feb 2020 01:39:09 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=default;
 d=pronewsemaillist.info; 
 h=From:Subject:To:Content-Type:MIME-Version:Reply-To:Date;
 i=sales@pronewsemaillist.info; 
 bh=dTkEeTvJPWuCvQ32ppMQIskB/V4=;
 b=4hSXlj5vAYZfG7XsmJZ8rNvuL7PLrwYdMpJOONsCv4g3kbV25Jnse/2RvTxiPTkOlgO2Mh3xU3A/
 CBpZAQn89e3zuUqqMIIhr1y5TklcU+8eTdSQJg7Ovj+rvGHS008ZvRc6DqMzqplZp2k3YdqV1wBc
 kBnpACAmJlNb0kycQCM=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=default;
 d=pronewsemaillist.info; 
 b=QwrNRHFrD/nYHcJ2p2x4c7pY87ACqUst/mB65uWf2do/CJjl4mRJ/FHUC5fh/IWfRDmdtVpzk/Ul
 AgPdC1lWblu/czihOTR291AyM0g96s+hAYooNbaEQgxTHIm6r+VTNvivs800Q4r2uWP4m03E6n2A
 OczSUTfBr9wRAwla8rk=;
To: v9fs-developer@lists.sourceforge.net
MIME-Version: 1.0
Date: Thu, 20 Feb 2020 17:38:59 -0800
X-Spam-Score: 5.9 (+++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: gk-group.com]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 MISSING_MID            Missing Message-Id: header
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain different
 freemails
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1j4xHY-0031fB-EU
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] Fwd: Re: 3% LOAN OFFER.
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
From: Demetrios Daniel via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: tradedubailtd@gmail.com
Cc: Demetrios Daniel <sales@pronewsemaillist.info>
Content-Type: multipart/mixed; boundary="===============2302852833523165107=="
Errors-To: v9fs-developer-bounces@lists.sourceforge.net
Message-Id: <E1j4xHb-0003ot-1j@sfs-ml-4.v29.lw.sourceforge.com>

This is a multi-part message in MIME format

--===============2302852833523165107==
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

 - This mail is in HTML. Some elements may be ommited in plain text. -

GK FINANCE Ltd.
D1, 27-29 William Pickering Drive,
Rosedale, 0632, New Zealand.
ATTN: GK FINANCE Ltd.  Dear Applicant,
Are you an Investors? Do you need a Business Loan?, Personal Loan ? at=
 3% Interest rate and a Maximum Repayment plan of 20 years.
In placing an Application, (loan applicants) do quote Reference: ( HT6=
47 / AMPLNN3 ) as subject and send us an e-Mail to: dr.demetriosdaniel=
6@gmail.com - or call us on our whats App Number in order for us to se=
rve you better ( for better Understanding ) - Application Desk - Phone=
: +447451205806
Until Then
Do Have a Very lovely day,
Dr Demetrius Daniel (CEO)
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
GK FINANCE Ltd.
D1, 27-29 William Pickering Drive,
Rosedale, 0632, New Zealand.
P: +208 629 5626 | M:  | F: +281-305-4954
General Enquiries: tradedubailtd@gmail.com | W: www.gk-group.com
=A9 2020 GK FINANCE Ltd All Rights Reserved.


sent from my iPad

--===============2302852833523165107==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============2302852833523165107==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer

--===============2302852833523165107==--


