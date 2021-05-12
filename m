Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A8B4237BA0F
	for <lists+v9fs-developer@lfdr.de>; Wed, 12 May 2021 12:09:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lglnu-0002IL-Kd; Wed, 12 May 2021 10:09:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <lhenriques@suse.de>) id 1lglns-0002I5-66
 for v9fs-developer@lists.sourceforge.net; Wed, 12 May 2021 10:09:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:In-Reply-To:
 Date:References:Subject:Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GZXGzY9ZSvPyTBg6CiKZUWSDHHIvzjuZrf6kSnodMBE=; b=gqT1zx7Sz6tuQKuqE31IErp8Q6
 7p3IxXBMwga7uKghqqSVsWLpdPuwSyLZ9iW24zAhn9rc45OR+qNGsG5SIYBmfoXpcJhlyTRECDFIp
 cHv63MCjGXm4RLcfhy95g/99oSpbkcUQ9CpDH6QQ/BppM5MwlMEwjcVrN2dYwOa9BhdY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:In-Reply-To:Date:References:Subject:
 Cc:To:From:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=GZXGzY9ZSvPyTBg6CiKZUWSDHHIvzjuZrf6kSnodMBE=; b=eOsess6Xa3GekKqLjAJWOSp+wd
 WpmdQWdo+4lUXomMUtiNasPoLegNW+TTiaohiN70oEdksPdp2BOTAu21YQGljmd5pNTgHUwxr8Ms3
 prbtwqinGnrbJOCHcgy0bd69Ub9XtrXXOK/hAA7XNJOzbwsFm3+2QVyH5gnTAwHltOuo=;
Received: from mx2.suse.de ([195.135.220.15])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lglnq-005Bjg-Bf
 for v9fs-developer@lists.sourceforge.net; Wed, 12 May 2021 10:09:21 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id 09DDDAF3B;
 Wed, 12 May 2021 10:09:12 +0000 (UTC)
Received: from localhost (brahms [local])
 by brahms (OpenSMTPD) with ESMTPA id aa6435b1;
 Wed, 12 May 2021 10:10:46 +0000 (UTC)
From: Luis Henriques <lhenriques@suse.de>
To: David Howells <dhowells@redhat.com>
References: <871rae24kv.fsf@suse.de> <87czu45gcs.fsf@suse.de>
 <YJPIyLZ9ofnPy3F6@codewreck.org> <87zgx83vj9.fsf@suse.de>
 <87r1ii4i2a.fsf@suse.de> <YJXfjDfw9KM50f4y@codewreck.org>
 <875yzq270z.fsf@suse.de> <2508106.1620737077@warthog.procyon.org.uk>
Date: Wed, 12 May 2021 11:10:45 +0100
In-Reply-To: <2508106.1620737077@warthog.procyon.org.uk> (David Howells's
 message of "Tue, 11 May 2021 13:44:37 +0100")
Message-ID: <87pmxwz2hm.fsf@suse.de>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: suse.de]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay lines
X-Headers-End: 1lglnq-005Bjg-Bf
Subject: Re: [V9fs-developer] 9p: fscache duplicate cookie
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
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

David Howells <dhowells@redhat.com> writes:

> Luis Henriques <lhenriques@suse.de> wrote:
>
>> +		if (data->inode < inode)
>> +			node = node->rb_left;
>> +		else if (data->inode > inode)
>> +			node = node->rb_right;
>
> If you're just using a plain integer as the key into your debug tree, an
> xarray, IDA or IDR might be easier to use.

Yep, xarray actually crossed my mind but rbtrees were still fresh in my
memory.  I'll look into the xarray API next time (which is likely to be
much simpler, I know).

Cheers,
-- 
Luis


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
