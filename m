Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 421F937A6EA
	for <lists+v9fs-developer@lfdr.de>; Tue, 11 May 2021 14:39:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lgRfR-0003qt-5v; Tue, 11 May 2021 12:39:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <dhowells@redhat.com>) id 1lgRfP-0003qI-37
 for v9fs-developer@lists.sourceforge.net; Tue, 11 May 2021 12:39:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-ID:Date:Content-Transfer-Encoding:
 Content-ID:Content-Type:MIME-Version:Subject:Cc:To:References:In-Reply-To:
 From:Sender:Reply-To:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=zW6HUKRjjKXm3BzeFVZwuZiMWKgwFf7ZJEWk02EXC4s=; b=UEPr+gGshZXQjSe08CpC9fKzDA
 9CtwUvyATXmxW+n6ydgVEaiBVWhq+lRvS1cen2XeNsOJRhuf9N9NppzLPkofWaf4DLfer9RSdqrQ2
 5dOumAYOAK8AbV7ts3ML7R5sboM2EIATAX/fKrnydVS4vl0Wf0Q5QdTygOoN+OzuCql0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-ID:Date:Content-Transfer-Encoding:Content-ID:Content-Type:
 MIME-Version:Subject:Cc:To:References:In-Reply-To:From:Sender:Reply-To:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=zW6HUKRjjKXm3BzeFVZwuZiMWKgwFf7ZJEWk02EXC4s=; b=NEoGxi5Wqth4dhVd7505lsM2k0
 4O7by/8AI2P/nGPCEmT550SfRbtPmSiEmrHWFgBVihV+OkoHNtni4EpKjOlkLghTTfuZjiR14uhUb
 tqBxHtdM3GQJwupsMfn3fk2+N0cjGGVeJ2NKQS+o+f/F96ThXUA6w9/kacc25gfc1PjU=;
Received: from us-smtp-delivery-124.mimecast.com ([216.205.24.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lgRfH-0003TN-G6
 for v9fs-developer@lists.sourceforge.net; Tue, 11 May 2021 12:39:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1620736742;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zW6HUKRjjKXm3BzeFVZwuZiMWKgwFf7ZJEWk02EXC4s=;
 b=X4pzpSTFv42C8TtKZZ2hZSiyxf6J87p/skGEISLJXGQ13T0tc7/rzRs1LUqDoAW+1Lxvfa
 TO8mwswwy8ugBXJjUH7yT4i8Sy8cLsivQMbBaCorXzOl+27ua963NL+ocY6pgJro5tRV8h
 giykVtkkI+vP7K3WplFqIdo9aNEtoLU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-247-gf5mG4uKNTmLPnWz5j-qrA-1; Tue, 11 May 2021 08:38:58 -0400
X-MC-Unique: gf5mG4uKNTmLPnWz5j-qrA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D7FE61854E21;
 Tue, 11 May 2021 12:38:56 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.33.36.3])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 30E23101F501;
 Tue, 11 May 2021 12:38:55 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
 Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
 Kingdom.
 Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <87czu45gcs.fsf@suse.de>
References: <87czu45gcs.fsf@suse.de>
To: Luis Henriques <lhenriques@suse.de>
MIME-Version: 1.0
Content-ID: <2507721.1620736734.1@warthog.procyon.org.uk>
Date: Tue, 11 May 2021 13:38:54 +0100
Message-ID: <2507722.1620736734@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [216.205.24.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lgRfH-0003TN-G6
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 dhowells@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hi Luis,

> I've been seeing fscache complaining about duplicate cookies in 9p:
> 
>  FS-Cache: Duplicate cookie detected
>  FS-Cache: O-cookie c=00000000ba929e80 [p=000000002e706df1 fl=226 nc=0 na=1]

This cookie is marked acquired (fl=2xx), but not relinquished (fl=4xx), so it
would still seem to be active:-/.  Pretty much one of the first things
__fscache_relinquish_cookie() does is to set that bit (should be bit 10).

One thing that might be useful is if you can turn on a couple of fscache
tracepoints:

echo 1 >/sys/kernel/debug/tracing/events/fscache/fscache_acquire/enable
echo 1 >/sys/kernel/debug/tracing/events/fscache/fscache_relinquish/enable

The cookie pointers in the duplicate cookie report should match the entries in
the trace output.

Note that my fscache-iter branch[1] improves the situation where the disk I/O
required to effect the destruction of a cache object delays the completion of
relinquishment by inserting waits, but that oughtn't to help here.

David

[1] https://git.kernel.org/pub/scm/linux/kernel/git/dhowells/linux-fs.git/log/?h=fscache-iter



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
