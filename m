Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 41FCA3ADC82
	for <lists+v9fs-developer@lfdr.de>; Sun, 20 Jun 2021 06:16:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1luot1-00014U-Em; Sun, 20 Jun 2021 04:16:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <asmadeus@codewreck.org>) id 1luosz-00014J-6n
 for v9fs-developer@lists.sourceforge.net; Sun, 20 Jun 2021 04:16:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wUAkVBtqwfhJ7JoQkwq9bvrQXDVb65OWrBZQsHRhhGk=; b=UpWE9/uoNo9uitB1nIe4ynV2nr
 s4zE7cSiPIeF9C9sTCu4Dau3TyxQnPC9Ck69qTVIGXkAiQOWNerNeFnfTvJ1x6pTqgMxezSOx+Hvp
 rg4zc5EsMy1LPtAP8xnw3QCq3JPGjWaalIquLVslDBdCnzD9d5omzThXhd29JQ3bc+RM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wUAkVBtqwfhJ7JoQkwq9bvrQXDVb65OWrBZQsHRhhGk=; b=Ol4zc8fc2tEksD+DvAOvOqvW9I
 dAznqU5NJPwZI/nM1TbRs72BczFT5lEb+vgOAQjW/BDYWqacj4S0+CvofvsON58dujbPbABc9dKzs
 gP3ju1cNcscPr8E7ykxjnfM2YbFrO6J5x8W3kRmiLqzZCw+o/kOjW9wXU9eTFTeErwdk=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1luosn-00HRpw-Aj
 for v9fs-developer@lists.sourceforge.net; Sun, 20 Jun 2021 04:16:44 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id D70CBC01E; Sun, 20 Jun 2021 06:16:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1624162581; bh=wUAkVBtqwfhJ7JoQkwq9bvrQXDVb65OWrBZQsHRhhGk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rw/Bq/90XsaB85pNFF1RD9+J7un4DGc7XizbsZd3aBHggPwXHshcIZWzugNdAKylH
 Tr+EyWKWltslAGOurmYpNJ7Igielcp4xVj1aIGxCG9lp52WRZX5WzacKICABnQ0tX1
 rPs+Tvu/CHR+1E1syZyn2ewaMjBJ3/2id9OFQFOSEHf7mct9MkPbVDDlAx2rU9iT2f
 OPGFd5VQTspFNOeft9kvS/3T6nZMGUuzcKLD14AmJh3H2JYaLqCQHoZGb7qShNl+MD
 mGAdag9jDPmKbZEHxtE7ttT2+5BoN19HiG8BKtpIlnYFBuq2kLvKyu5u47L1KaBBPv
 VZp/ysmXm2LWw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 2B37CC009;
 Sun, 20 Jun 2021 06:16:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1624162581; bh=wUAkVBtqwfhJ7JoQkwq9bvrQXDVb65OWrBZQsHRhhGk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rw/Bq/90XsaB85pNFF1RD9+J7un4DGc7XizbsZd3aBHggPwXHshcIZWzugNdAKylH
 Tr+EyWKWltslAGOurmYpNJ7Igielcp4xVj1aIGxCG9lp52WRZX5WzacKICABnQ0tX1
 rPs+Tvu/CHR+1E1syZyn2ewaMjBJ3/2id9OFQFOSEHf7mct9MkPbVDDlAx2rU9iT2f
 OPGFd5VQTspFNOeft9kvS/3T6nZMGUuzcKLD14AmJh3H2JYaLqCQHoZGb7qShNl+MD
 mGAdag9jDPmKbZEHxtE7ttT2+5BoN19HiG8BKtpIlnYFBuq2kLvKyu5u47L1KaBBPv
 VZp/ysmXm2LWw==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id ed6bbf56;
 Sun, 20 Jun 2021 04:16:15 +0000 (UTC)
Date: Sun, 20 Jun 2021 13:16:00 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Changbin Du <changbin.du@gmail.com>
Message-ID: <YM7BAM5lK7NRVZ7n@codewreck.org>
References: <20210606230922.77268-1-changbin.du@gmail.com>
 <YMcaEq95T+1GxZz2@localhost> <YMca+N0UiGNZ1lSm@codewreck.org>
 <YMcfKqbCq7ZWAyaO@localhost>
 <20210620033659.s7rohai7dzwpgjur@mail.google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210620033659.s7rohai7dzwpgjur@mail.google.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1luosn-00HRpw-Aj
Subject: Re: [V9fs-developer] [PATCH v3 0/3] 9p: add support for root file
 systems
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>, Latchesar Ionkov <lucho@ionkov.net>,
 v9fs-developer@lists.sourceforge.net, Josh Triplett <josh@joshtriplett.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Changbin Du wrote on Sun, Jun 20, 2021 at 11:36:59AM +0800:
> The main problem is we lack a generic handing for non-block rootdev. I think
> maybe we can unify all of above.

We're already going in that direction, please have a look at the threads
on fsdevel:
(new patch by Christoph)
https://lore.kernel.org/linux-fsdevel/20210617153649.1886693-1-hch@lst.de/

(older threads I linked earlier)
https://lore.kernel.org/linux-fsdevel/20210608153524.GB504497@redhat.com/


I think it's getting there, Christoph should send a v2 addressing Vivek
remarks that will likely get picked up.
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
