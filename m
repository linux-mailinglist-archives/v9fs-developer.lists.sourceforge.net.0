Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD2169C2BE
	for <lists+v9fs-developer@lfdr.de>; Sun, 19 Feb 2023 22:36:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pTrMN-00050A-DU;
	Sun, 19 Feb 2023 21:36:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linux_oss@crudebyte.com>) id 1pTrMM-000502-3p
 for v9fs-developer@lists.sourceforge.net;
 Sun, 19 Feb 2023 21:36:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PBokiqXsXo5Pc5WAkqYLqOvdwovmwqM/9idLauPogmA=; b=iWBcRgm6Vks1QdX2+mfmI9Mvxt
 VFz1v+gltgEKPNHSvzgJCygm0zLAGePrLmoKfGfJWyR1YGToy1TqMT6ezU4XzxHZ33dAwH8vGKFvA
 qoTH/xEFSl7ueOZkPfmBkJu+7recKzYja76j6Ba9kBnzZTk1S8W/0XEOEVayp4MzWDTg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PBokiqXsXo5Pc5WAkqYLqOvdwovmwqM/9idLauPogmA=; b=RuQYdk3coKgDMrm0DVP4SP6Sr5
 eBsnPlBSZQ+rNSYxabiXcyQeEfNcyESlpGnhdUTPztmkiLCVCtXqPJtn1+Cq+iJginAjc/Ty7VcI/
 TyMZjBVEEZuVSNfNtiw+6aF0Mu66QKN+FbkebdH4HcqnTO12UoyEI74EdsxKOLPXnU3E=;
Received: from kylie.crudebyte.com ([5.189.157.229])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pTrMJ-00ARA3-Mr for v9fs-developer@lists.sourceforge.net;
 Sun, 19 Feb 2023 21:36:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=crudebyte.com; s=kylie; h=Content-Type:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 Content-ID:Content-Description;
 bh=PBokiqXsXo5Pc5WAkqYLqOvdwovmwqM/9idLauPogmA=; b=O5exEZ/p8bozHp6ym76iYZQ713
 KO5khgWDNlQrjiYPNFuK284H6gkgu8iQQ+t906HUom2/+GqSMXsYKeXegrb6wGm86ptgopOBmHC7g
 x3XvoiZWka4eLlWO1Wx6CD0D/3rYqmGgIWRTFZie/MdIr+osue5//0thK2gTCPRWBSyrVBTKq9SjP
 CznCGYXM5k+YBEJ4b5t59xVuXCZnfKKjuzUx9g4PRQnXwk0VAJ6vXG4H798xXBvynLkFb+cXfKG7j
 9547wmBr+3mlt30K7Gj/227nqnePt03wD2MDap/Y61yK7JvnOG/J0d/pnjgg9PJjfK7K8baj/up6y
 U1iDQjuC2EOm4R9h8MiOsX4hPtN3KX2wRxdrumC5VB7SKH0tfSPgfE8J+WvY1Guy7YWiTm7ycNkBS
 d0i8MT3OVGC4ztil7gMT6WLl+L3jtcJ5O2hEeDc/yReW1+UDrh3fooEgrt5K7VwVQk1El9O6fvaQ9
 8svY8lwQQ8Cd+8hCp7vavdEGWBIieBlFmnleOYyI/hvcWyf+07F8F5dOGOwN0Zwr8DiaYvmk6iRUU
 wGyErymXlHT/eKUcv5gejBlvTozbQjQquxk+Cyoe6ZzJgkBBdUMyuJPKglBRY2NvirU0qpiisGT+v
 40ESyxInEUEliLcWxDbm6ieNhGhBFYHrGo0OunTKU=;
To: v9fs-developer@lists.sourceforge.net, asmadeus@codewreck.org,
 rminnich@gmail.com, lucho@ionkov.net, Eric Van Hensbergen <ericvh@kernel.org>
Date: Sun, 19 Feb 2023 22:36:20 +0100
Message-ID: <12241224.W6qpu7VSM5@silver>
In-Reply-To: <20230218003323.2322580-1-ericvh@kernel.org>
References: <20230124023834.106339-1-ericvh@kernel.org>
 <20230218003323.2322580-1-ericvh@kernel.org>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Saturday, February 18,
 2023 1:33:12 AM CET Eric Van Hensbergen
 wrote: > This is the fourth version of a patch series which adds a number
 > of features to improve read/write performance in the 9p fi [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pTrMJ-00ARA3-Mr
Subject: Re: [V9fs-developer] [PATCH v4 00/11] Performance fixes for 9p
 filesystem
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
From: Christian Schoenebeck via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: Christian Schoenebeck <linux_oss@crudebyte.com>
Cc: linux-fsdevel@vger.kernel.org, Eric Van Hensbergen <ericvh@kernel.org>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Saturday, February 18, 2023 1:33:12 AM CET Eric Van Hensbergen wrote:
> This is the fourth version of a patch series which adds a number
> of features to improve read/write performance in the 9p filesystem.
> Mostly it focuses on fixing caching to help utilize the recently
> increased MSIZE limits and also fixes some problematic behavior
> within the writeback code.
> 
> All together, these show roughly 10x speed increases on simple
> file transfers over no caching for readahead mode.  Future patch
> sets will improve cache consistency and directory caching, which
> should benefit loose mode.
> 
> This iteration of the patch incorporates an important fix for
> writeback which uses a stronger mechanism to flush writeback on
> close of files and addresses observed bugs in previous versions of
> the patch for writeback, mmap, and loose cache modes.
> 
> These patches are also available on github:
> https://github.com/v9fs/linux/tree/ericvh/for-next
> and on kernel.org:
> https://git.kernel.org/pub/scm/linux/kernel/git/ericvh/v9fs.git
> 
> Tested against qemu, cpu, and diod with fsx, dbench, and postmark
> in every caching mode.
> 
> I'm gonna definitely submit the first couple patches as they are
> fairly harmless - but would like to submit the whole series to the
> upcoming merge window.  Would appreciate reviews.

I tested this version thoroughly today (msize=512k in all tests). Good news 
first: the previous problems of v3 are gone. Great! But I'm still trying to 
make sense of the performance numbers I get with these patches.

So when doing some compilations with 9p, performance of mmap, writeback and 
readahead are basically all the same, and only loose being 6x faster than the 
other cache modes. Expected performance results? No errors at least. Good!

Then I tested simple linear file I/O. First linear writing a 12GB file
(time dd if=/dev/zero of=test.data bs=1G count=12):

writeback    3m10s [this series - v4]
readahead    0m11s [this series - v4]
mmap         0m11s [this series - v4]
mmap         0m11s [master]
loose        2m50s [this series - v4]
loose        2m19s [master]

That's a bit surprising. Why is loose and writeback slower?

Next linear reading a 12GB file
(time cat test.data > /dev/null):

writeback    0m24s [this series - v4]
readahead    0m25s [this series - v4]
mmap         0m25s [this series - v4]
mmap         0m9s  [master]
loose        0m24s [this series - v4]
loose        0m24s [master]

mmap degredation sticks out here, and no improvement with the other modes?

I always performed a guest reboot between each run BTW.





_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
