Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B931D3676
	for <lists+v9fs-developer@lfdr.de>; Thu, 14 May 2020 18:27:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Message-Id:Content-Transfer-Encoding:
	Content-Type:Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:Date:To:Content-Description:MIME-Version:
	Sender:Cc:Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:
	Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=gzJBCebsUavQYuvicGoYAovC0w6g/lcts6xfc4neXjE=; b=i+MYTRTiXnT5xmcyCXQUhk5ukO
	9xcko2vVNv46Ljz8qz1r+1kn1MOLSOgki+H/CnUWW92xnHaUUM54i1gnDsWMFelV5RKKr6XfzZn2d
	SEuiRqqYaKduTsN6MN/llqpsUz6AWQFCX4oMsYJOEshQYWNCfjH3g2wmB0KtDnmHspq4=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1jZGi7-0003jb-QQ; Thu, 14 May 2020 16:27:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <info@sendifolk.live>) id 1jZGi6-0003jO-LN
 for v9fs-developer@lists.sourceforge.net; Thu, 14 May 2020 16:27:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Date:From:To:Subject:Content-Description:
 Content-Transfer-Encoding:MIME-Version:Content-Type:Sender:Reply-To:
 Message-ID:Cc:Content-ID:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7JFkQQWC7j3lvAFONK9mngpEr+JvIzKLFvgXQuqYc2c=; b=AYmmjTHYfoZLtLtbssAYdJODWQ
 DSBnsCpLzFlcgE4HkjL6QuSdjfE8rQ+xjxaaA6guyBtMLYi94wuGVwuYHFouowtSSvaoW4+ozczGs
 kId8Sgxu8pFIn1jjWVwXTRFKr0Qi04OvReeyIFO9xTfgt66yK6COA91mhSL3Q78mtFCA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Date:From:To:Subject:Content-Description:Content-Transfer-Encoding:
 MIME-Version:Content-Type:Sender:Reply-To:Message-ID:Cc:Content-ID:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7JFkQQWC7j3lvAFONK9mngpEr+JvIzKLFvgXQuqYc2c=; b=F/XHdaKu43HMtitT0MOvjVCyRz
 vs8FGueMJflHFuW1Jq8ZY/1+6NJFVrt0cggcJj5mPrCQRB5uUtvxV/E/r5zKlrpj/GPFxbgyPjDfb
 jUAkY2pQ7sIa6Ft5NvfeQ+Jf0EG/9wX0P6ptMbKY51q20LlgM0K88v4NLHZC53T3K/iQ=;
Received: from se.sendifolk.live ([45.95.171.188])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jZGi5-00Fkbj-Bk
 for v9fs-developer@lists.sourceforge.net; Thu, 14 May 2020 16:27:50 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=mail; d=sendifolk.live; 
 h=Content-Type:MIME-Version:Content-Transfer-Encoding:Content-Description:Subject:To:From:Date;
 i=info@sendifolk.live; bh=iDKtW5nwQUMQLdoiy13PVMOL2M4=;
 b=iYy+OljEIrDHb6EUDNKDEYmDoMUZSs64Sed2krijEyobXosGZF3uXgPxib4KhpeXVT+HLzWtr7Dt
 fFSnnjfbL5xlUjvFM7ohyN1nzjhRI4/tdp8KFk8IPst5HzWkZIpYSpqK+R2ML/gGSlFo31tcYP0c
 GF+SSwIm6xte03a9gcs=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=mail; d=sendifolk.live;
 b=AKEPJequ1I5aPpVfY949b1eu0xSnsn/0whVcP2EThrG/Ae4qQab+1EEYc0v7YSRKC0txq4IJeFXX
 KaCeNr1D9CpUvyahhlgk7YPQah6jSQWLi/ZZdQNX5PqhpncTxfMPj0Ze2rpr6+DH/NymK+8kRd4e
 jINan5u9NhAXfYzAjQ8=;
MIME-Version: 1.0
Content-Description: Mail message body
To: v9fs-developer@lists.sourceforge.net
Date: Thu, 14 May 2020 18:07:08 +0200
X-Spam-Score: 6.6 (++++++)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 2.7 UNCLAIMED_MONEY        BODY: People just leave money laying around
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 MISSING_MID            Missing Message-Id: header
 3.0 JM_SOUGHT_FRAUD_3      Body contains frequently-spammed text patterns
 0.0 LOTS_OF_MONEY          Huge... sums of money
 0.0 MONEY_FRAUD_8          Lots of money and very many fraud phrases
X-Headers-End: 1jZGi5-00Fkbj-Bk
Subject: [V9fs-developer] Hello
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
From: Emili Berker via V9fs-developer <v9fs-developer@lists.sourceforge.net>
Reply-To: Emili Berker <info@sendifolk.live>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net
Message-Id: <E1jZGi7-0003jb-QQ@sfs-ml-1.v29.lw.sourceforge.com>

Hello,

I am Mrs. Emili Berker, I'm a Cambodian American Citizen, I'm the wife of late Mr. Jon Berker, my husband worked with the Brunei Shell Petroleum Co Sdn Bhd (BSP) for twenty years and worked in Istanbul Turkey as a contractor before he died in the year 2010.

We were married for 14 years without a child. My Husband died after a brief illness that lasted for only two weeks. Since his death I decided not to re-marry or get a child outside my matrimonial home. When my late husband was alive we deposited the sum of $6,500,000 Million with a Bank in Turkey. The bank management just wrote me as the beneficiary to come forward to sign for the release of this fund or rather issue a letter of authorization to somebody to receive it on my behalf if I can not come over.

Presently, I'm in the hospital where I have been undergoing treatment for esophageal cancer. My doctor have told me that I have only a few months to live. It is my last wish to see this money distributed to charity organizations, Because my husband relatives and friends have plundered so much of my wealth since my illness, I cannot live with the agony of entrusting this huge responsibility to any of them.

Please, I'm seeking for any honest person who will get the Funds from the Bank. And  use this money to fund the poor, orphanages, widows and charity organizations. I took this decision because I don't have any child that will inherit this money and I don't want my husband's hard earned money to be misused by his greedy relatives.

Due to the state of my health. I can not communicate by phone because my illness have affected my throat. I prefer to communicate here on email. I will appreciate if you give me more light about you and your details.

I don't want a situation where this money will be used in an ungodly manner. Hence the reason for taking this bold decision. I am not afraid of death hence I know where I am going if i die. As soon as I receive your reply I shall give you the contact detail`s of my lawyer who is conversant with the unclaimed funds and my presents situation. However I shall forward to you the bank details with the letter i will give you as she will be the one to assist you in laying claims for this funds.

Above all, I wish to assure you that the funds in question is not an act of Terrorist Funding, neither Money Laundering nor
Drug-funding. Thus, the transfer will follow the normal protocol of funds transfer, backed up with its papers so that you will not encounter any difficulties or problem with your Federal Monetary Control authorities. Kindly contact me via my private email for more details. (emiliberker11@gmail.com)

Thanks,
Yours Truly,
Mrs. Emili Berker.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
