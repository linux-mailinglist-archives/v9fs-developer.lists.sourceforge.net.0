Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D65156CD8E
	for <lists+v9fs-developer@lfdr.de>; Sun, 10 Jul 2022 08:38:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oAQaJ-0003Gu-Gr; Sun, 10 Jul 2022 06:38:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tyhicks@linux.microsoft.com>) id 1oAQaH-0003Gn-TH
 for v9fs-developer@lists.sourceforge.net; Sun, 10 Jul 2022 06:38:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=VbG2aFZzOBvuXpefJTY7qkZ8KfcxF36UmtS/hmfYQsQ=; b=cZOoBCkEuKDLrSFt3TCZ529Nh2
 s8E1XVL5xZBj0903PkQK9rw9dJdGuyGfAcPrmcAUbqCQa6watgo9LO/e+XQinpjJSyUi5mBB6UPox
 Q8RRvuELOXjIjomVrhcUOnrHMY4aUm2nfSC8DMB+asvzI2sxWtIN3rssoX/97VnB9rq4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=VbG2aFZzOBvuXpefJTY7qkZ8KfcxF36UmtS/hmfYQsQ=; b=YESW9EuARWPpRnQD+zRIbho96i
 3At2BsiQAF2uSG9s8Cc01HuTmuJqavHGI174GlEQqTeeg1hrbSw1riGY8Phz3Icmwrg4EKify1B8J
 G9K2BaMXHq6NilC1GkVEKKbr7AYmNI9gCiHlphmOwgqLp3317j3uYr2PrrwYCIuEo4c0=;
Received: from linux.microsoft.com ([13.77.154.182])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.94.2)
 id 1oAQaF-00CZYg-Ti
 for v9fs-developer@lists.sourceforge.net; Sun, 10 Jul 2022 06:38:24 +0000
Received: from sequoia (162-237-133-238.lightspeed.rcsntx.sbcglobal.net
 [162.237.133.238])
 by linux.microsoft.com (Postfix) with ESMTPSA id 2C094204C41E;
 Sat,  9 Jul 2022 23:38:12 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 2C094204C41E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
 s=default; t=1657435092;
 bh=VbG2aFZzOBvuXpefJTY7qkZ8KfcxF36UmtS/hmfYQsQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mfxJx3TxYOTNdcu6ZzlzIwcj/kAC2tn3u7SFCHQevr9PeeAfIUAOcVuu/ZJYwEfCp
 OFQcxvaeTh+VriuYMbDDHApIO+9qCUCWGuWsUWj+wNsdKU2XczmH9Z0LWMBJWHIj9b
 dDMCE9eeocGxbJdv0Op5pMEw6HP/M/n8tQFxa0+A=
Date: Sun, 10 Jul 2022 01:38:08 -0500
From: Tyler Hicks <tyhicks@linux.microsoft.com>
To: Eric Van Hensbergen <ericvh@gmail.com>,
 Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <20220710063808.GB272934@sequoia>
References: <20220709200005.681861-1-tyhicks@linux.microsoft.com>
 <20220710062557.GA272934@sequoia>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220710062557.GA272934@sequoia>
X-Spam-Score: -17.9 (-----------------)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2022-07-10 01:26:13, Tyler Hicks wrote: > On 2022-07-09
 15:00:05, Tyler Hicks wrote: > > Ensure that the fid's iounit field is set
 to zero when a new fid is > > created. Certain 9P operations, such [...] 
 Content analysis details:   (-17.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [13.77.154.182 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 welcome-list
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
X-Headers-End: 1oAQaF-00CZYg-Ti
Subject: Re: [V9fs-developer] [PATCH] net/9p: Initialize the iounit field
 during fid creation
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
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, v9fs-developer@lists.sourceforge.net,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 2022-07-10 01:26:13, Tyler Hicks wrote:
> On 2022-07-09 15:00:05, Tyler Hicks wrote:
> > Ensure that the fid's iounit field is set to zero when a new fid is
> > created. Certain 9P operations, such as OPEN and CREATE, allow the
> > server to reply with an iounit size which the client code assigns to the
> > fid struct shortly after the fid is created in p9_fid_create(). Other
> > operations that follow a call to p9_fid_create(), such as an XATTRWALK,
> > don't include an iounit value in the reply message from the server. In
> > the latter case, the iounit field remained uninitialized. Depending on
> > allocation patterns, the iounit value could have been something
> > reasonable that was carried over from previously freed fids or, in the
> > worst case, could have been arbitrary values from non-fid related usages
> > of the memory location.
> > 
> > The bug was detected in the Windows Subsystem for Linux 2 (WSL2) kernel
> > after the uninitialized iounit field resulted in the typical sequence of
> > two getxattr(2) syscalls, one to get the size of an xattr and another
> > after allocating a sufficiently sized buffer to fit the xattr value, to
> > hit an unexpected ERANGE error in the second call to getxattr(2). An
> > uninitialized iounit field would sometimes force rsize to be smaller
> > than the xattr value size in p9_client_read_once() and the 9P server in
> > WSL refused to chunk up the READ on the attr_fid and, instead, returned
> > ERANGE to the client. The virtfs server in QEMU seems happy to chunk up
> > the READ and this problem goes undetected there. However, there are
> > likely other non-xattr implications of this bug that could cause
> > inefficient communication between the client and server.

^ I think this last sentence can be removed. I now believe that this
only affects xattr get/set operations because nothing else calling the
functions that honor iounit is getting the fid directly from a call to
p9_fid_create().

> > 

Please add the following tag:

 Fixes: ebf46264a004 ("fs/9p: Add support user. xattr")

I'm happy to do both of these things in a v2 if any changes/improvements
are requested. Thanks!

Tyler

> > Cc: stable@vger.kernel.org
> > Signed-off-by: Tyler Hicks <tyhicks@linux.microsoft.com>
> > ---
> > 
> > Note that I haven't had a chance to identify when this bug was
> > introduced so I don't yet have a proper Fixes tag. The history looked a
> > little tricky to me but I'll have another look in the coming days. We
> > started hitting this bug after trying to move from linux-5.10.y to
> > linux-5.15.y but I didn't see any obvious changes between those two
> > series. I'm not confident of this theory but perhaps the fid refcounting
> > changes impacted the fid allocation patterns enough to uncover the
> > latent bug?
> 
> From reading the source, I believe that this first showed up in commit
> ebf46264a004 ("fs/9p: Add support user. xattr") which landed in v2.6.36.
> Before that commit, p9_client_read(), p9_client_write(), and
> p9_client_readdir() were always passed a fid that came from a file's
> private_data and went through the open/create functions that initialized
> iounit. That commit was the first that passed a fid directly from
> p9_fid_create() to p9_client_read().
> 
> Tyler


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
