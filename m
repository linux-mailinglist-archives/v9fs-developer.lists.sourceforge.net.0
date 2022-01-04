Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AAC04842C4
	for <lists+v9fs-developer@lfdr.de>; Tue,  4 Jan 2022 14:49:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1n4kCG-0000X2-JS; Tue, 04 Jan 2022 13:49:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1n4kCE-0000Wv-FL
 for v9fs-developer@lists.sourceforge.net; Tue, 04 Jan 2022 13:49:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1qaewoMliUIOWCBFg0odS6ajpeemb562nW7wSu9ZZyA=; b=X9y9MYpscjRh5v5fP+LRXZfN7B
 cwZfJo/V31zeARTByMzk1PrefkVX9FNoaJY9sBAg8Rq4mQMDBRdEtYPXGcyp8JLyJVhEfbMV6Mnrl
 YO8uFVzTiIzyIevpnCj0oG0aEH7IzOpxgdV7GjwtWf1FfCFlHJ4OWGqXQABkXCV8CboY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1qaewoMliUIOWCBFg0odS6ajpeemb562nW7wSu9ZZyA=; b=IjllFpvn1QbfV/zRqBqUJtRL+l
 FQ9zlkrtl6WhD9VbNDhpHyWjPiq5LqePoPAjYer//NSaOhAxXzu4A/JMvEM8WVkBSWuimFl+yKLhr
 Mq1pc0pobskmzYqB+ILe4nKfOgfUL0hUUp7nMDqAS0MglUe27AoQ+fvpXWRa+9dD0MMA=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1n4kC7-001uxE-AV
 for v9fs-developer@lists.sourceforge.net; Tue, 04 Jan 2022 13:49:50 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id B5AC4C01D; Tue,  4 Jan 2022 14:49:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1641304176; bh=1qaewoMliUIOWCBFg0odS6ajpeemb562nW7wSu9ZZyA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YexELsQJEgNO5m7iGeZlWAIgEcLIKPDheCTVOZ3FNVw4lGnboHwq58ulZYVoDRAWb
 oTulkNKXi8Z7gRGemX0N0NOd8blshqwV1YyD42RyYsqIvfblsMw9m+UZAeZeQNohcT
 KLcBCimY5NNHS5Qnd09zvoaZAjSbSDbU+HrMUnX/wTNAFel2NijNGAx99o1ZB6dUUP
 sfaGHDuljdfO6CCzUnfqfM96tqUoem60Qwy/lp3HoQG4lopDEcDyj0YWkzZ6DDy0nz
 9TC2NnYsQ34BjbWHg3UM5ShKeK3qj9SMVW42gw1HhcUG9c9XdLtuDu0+Ho3iLM9EkT
 NROKSh3faKVlQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 5715AC009;
 Tue,  4 Jan 2022 14:49:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1641304176; bh=1qaewoMliUIOWCBFg0odS6ajpeemb562nW7wSu9ZZyA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YexELsQJEgNO5m7iGeZlWAIgEcLIKPDheCTVOZ3FNVw4lGnboHwq58ulZYVoDRAWb
 oTulkNKXi8Z7gRGemX0N0NOd8blshqwV1YyD42RyYsqIvfblsMw9m+UZAeZeQNohcT
 KLcBCimY5NNHS5Qnd09zvoaZAjSbSDbU+HrMUnX/wTNAFel2NijNGAx99o1ZB6dUUP
 sfaGHDuljdfO6CCzUnfqfM96tqUoem60Qwy/lp3HoQG4lopDEcDyj0YWkzZ6DDy0nz
 9TC2NnYsQ34BjbWHg3UM5ShKeK3qj9SMVW42gw1HhcUG9c9XdLtuDu0+Ho3iLM9EkT
 NROKSh3faKVlQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 9e56d9f1;
 Tue, 4 Jan 2022 13:49:29 +0000 (UTC)
Date: Tue, 4 Jan 2022 22:49:14 +0900
From: Dominique Martinet <asmadeus@codewreck.org>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
Message-ID: <YdRQWtQNO/DA02VW@codewreck.org>
References: <E1n4jXv-000445-GK@lizzy.crudebyte.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1n4jXv-000445-GK@lizzy.crudebyte.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Christian Schoenebeck wrote on Tue, Jan 04,
 2022 at 01:53:59PM
 +0100: > Volunteering as reviewer for 9p patches. As I am quite familiar
 with the > 9p code base in the Linux kernel already, plus being [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1n4kC7-001uxE-AV
Subject: Re: [V9fs-developer] [PATCH] 9p: add myself as reviewer to
 MAINTAINERS
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
Cc: Eric Van Hensbergen <ericvh@gmail.com>,
 v9fs-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Latchesar Ionkov <lucho@ionkov.net>, Greg Kurz <groug@kaod.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Christian Schoenebeck wrote on Tue, Jan 04, 2022 at 01:53:59PM +0100:
> Volunteering as reviewer for 9p patches. As I am quite familiar with the
> 9p code base in the Linux kernel already, plus being current maintainer
> of 9p in QEMU this move probably makes sense.

There honestly isn't much coming in, but it'll be a pleasure to have you
help when you can, I'll push this to Linus with other 5.17 changes in a
couple of weeks :)

I didn't reply to your series for bigger msize, I doubt I'll have time
to do any useful tests for it this round but I'm thinking of taking the
first patch first now as it makes sense independantly.
I feel that the rest needs more attention and will be for next cycle,
sorry for the delay
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
