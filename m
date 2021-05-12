Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 84ABE37BE76
	for <lists+v9fs-developer@lfdr.de>; Wed, 12 May 2021 15:45:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lgpBS-0003nj-Kb; Wed, 12 May 2021 13:45:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <viro@ftp.linux.org.uk>) id 1lgpBR-0003nY-0X
 for v9fs-developer@lists.sourceforge.net; Wed, 12 May 2021 13:45:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Sender:In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YLal5L+CmuOuCAOcCE22iOgCRRaMTqvhb0KNrSjqHyU=; b=WGZhUZiY9UBMLb8C3B8w7DKM8
 /59tY/9vTZv6Cqc8YFS0HqLWsIGGOSDsDGwLMr0vRYSFMdVLdZPqPXRMzj5w6EHWUHmBQoP577sL1
 UeKyhBoQIQq/SID5PpdjLEKO3EALUQSUhPF2r7Z5Lq8+84MpA727YGfLolv/Sf3Zhzmds=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Sender:In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YLal5L+CmuOuCAOcCE22iOgCRRaMTqvhb0KNrSjqHyU=; b=Sz6BHmolct0o4kc3bRYv5baBDG
 WzasJDuMvW4xVrytFBoY1XxtqHxSLtNnxgFn/u5e1pLh80vh1CgTInNM/zWKAsE+NcUoIOJ1GdGxp
 3ihzQIM7kvYXuiifdHF5DIMLC+ReNlBIjYwOyOJECwAJwQIQ1RTYxljEFvZwSd9Vl3po=;
Received: from zeniv-ca.linux.org.uk ([142.44.231.140])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lgpBN-005UEo-I1
 for v9fs-developer@lists.sourceforge.net; Wed, 12 May 2021 13:45:54 +0000
Received: from viro by zeniv-ca.linux.org.uk with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1lgpAz-00DvCC-NQ; Wed, 12 May 2021 13:45:25 +0000
Date: Wed, 12 May 2021 13:45:25 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: David Howells <dhowells@redhat.com>
Message-ID: <YJvb9S8uxV2X45Cu@zeniv-ca.linux.org.uk>
References: <YJvJWj/CEyEUWeIu@codewreck.org> <87tun8z2nd.fsf@suse.de>
 <87czu45gcs.fsf@suse.de>
 <2507722.1620736734@warthog.procyon.org.uk>
 <2882181.1620817453@warthog.procyon.org.uk>
 <87fsysyxh9.fsf@suse.de>
 <2891612.1620824231@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2891612.1620824231@warthog.procyon.org.uk>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: et.al]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1lgpBN-005UEo-I1
Subject: Re: [V9fs-developer] What sort of inode state does ->evict_inode()
 expect to see? [was Re: 9p: fscache duplicate cookie]
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 Luis Henriques <lhenriques@suse.de>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, May 12, 2021 at 01:57:11PM +0100, David Howells wrote:
> Hi Al,
> 
> We're seeing cases where fscache is reporting cookie collisions that appears
> to be due to ->evict_inode() running parallel with a new inode for the same
> filesystem object getting set up.

Huh?  Details, please.  What we are guaranteed is that iget{,5}_locked() et.al.
on the same object will either prevent the call of ->evict_inode() (if they
manage to grab the sucker before I_FREEING is set) or will wait until after
->evict_inode() returns.


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
