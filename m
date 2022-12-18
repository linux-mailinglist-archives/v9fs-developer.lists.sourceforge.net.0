Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4897864FD22
	for <lists+v9fs-developer@lfdr.de>; Sun, 18 Dec 2022 01:08:30 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1p6hEC-0005a2-0m;
	Sun, 18 Dec 2022 00:08:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <asmadeus@codewreck.org>) id 1p6hEA-0005YV-TY
 for v9fs-developer@lists.sourceforge.net;
 Sun, 18 Dec 2022 00:08:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fpdmOXqM/1kKApXJ+tHnkN+bPDRrjJAPZaqdIQ6rhX8=; b=KH5p+UV6v+IH0jIDbT9dfssInn
 D541WWF0SszyLbw4xk3cCywVOj4VgUSWUSTmSS3DZn7XdlqnjVvOXyiHgsYxC3VrJzMsXkMn+Fkvn
 Z+mBV/Aq3nfTOmxu0LBLWGBzoCS5jgan/Q8YPTRTmZwK0v3WKWnOkzMwsZV9DoiQUd5U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fpdmOXqM/1kKApXJ+tHnkN+bPDRrjJAPZaqdIQ6rhX8=; b=JDjyfASikFocGyWc88vlkdKP3f
 H7Ac+Tiv2jTdcJLa8xvyB8O+u+zDxX1wAWYRFFcnTaX0FRr1ohhPczxP7Suf40bBhD/tCFeu/+4if
 bUCo6o6b60bvPLX56NfdX9B9RkG2PA/B7+6jxvoYzAUooYiwAtKCwhAZDZqg+4wWfGbQ=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1p6hE6-002wWM-2i for v9fs-developer@lists.sourceforge.net;
 Sun, 18 Dec 2022 00:08:26 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 05A07C01F; Sun, 18 Dec 2022 01:08:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1671322105; bh=fpdmOXqM/1kKApXJ+tHnkN+bPDRrjJAPZaqdIQ6rhX8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=mMr5JhIPLulUj6eyB8heAaGg8yb8xmheQKByRNDhdFJAXdAZy6MOUYiU/qiqzt76o
 dXm+hq0LtthMKXs4zyaV+fVZ0j+zfh6vf07Dm7ZMJRSL3etE/1vOHOaiutFsS0ogYF
 Hm1Vk7ep/VeWx8bm+Zi/eDkXMXglKakMopgJoBJO02/KBX3fzYvKU5u2rfvQKTWyJT
 XHLuNIagfG85+RiFDyS5tYadHnXsxIkQ1g8+UIrPEBjV4DPn6yXwhmZKLEAe+r9WUn
 JwOJFrPJ7Unr8D3lOC0LhyG7U5bTdx15KoJl+yrYh47YC5+Ce3wJbW5yXqIz1IeU5H
 YANL22TcKkYoQ==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 091BCC009;
 Sun, 18 Dec 2022 01:08:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1671322104; bh=fpdmOXqM/1kKApXJ+tHnkN+bPDRrjJAPZaqdIQ6rhX8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Dd0JsioLyY1v4lskIi8f+uw1Ud3R0b+I4kO1xhjMKj0salbZygSWzeUY58cFp6Pyt
 R6O8IS+voDBeFSFjlYkGj8o2utPjz+8a98AFm4jomBHBlH3UQ+0c/Vi/HVWmGyJ+LZ
 8MLCTr8acHTnmSmcyPHHD1ULjOGIp4UZ54C6qxFJVgKJiPoGoPl9bwxCDihW5Ma+TV
 6qZRsr1rJSZHqsg9EoAUly/6yq53bosl5/n0h9D3fCbZqIwRWe+pcDg7krCp919/+c
 mYBmusINURukm+Jk7cgUNtQ0bwjAFdauh3I49sirSabpSfn3BLYX8nBEuae7IikZ7G
 PLOkA8VufHHqQ==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id 1d3f7940;
 Sun, 18 Dec 2022 00:08:07 +0000 (UTC)
Date: Sun, 18 Dec 2022 09:07:52 +0900
From: asmadeus@codewreck.org
To: Eric Van Hensbergen <evanhensbergen@icloud.com>
Message-ID: <Y55Z2DwZgRG+9zW3@codewreck.org>
References: <20221217185210.1431478-1-evanhensbergen@icloud.com>
 <20221217185210.1431478-3-evanhensbergen@icloud.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221217185210.1431478-3-evanhensbergen@icloud.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Eric Van Hensbergen wrote on Sat, Dec 17, 2022 at 06:52:06PM
 +0000: > The writeback_fid fallback code assumes a root uid fallback which
 > breaks many server configurations (which don't run as root). T [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1p6hE6-002wWM-2i
Subject: Re: [V9fs-developer] [PATCH 2/6] Don't assume UID 0 attach
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
Cc: lucho@ionkov.net, linux_oss@crudebyte.com, linux-kernel@vger.kernel.org,
 rminnich@gmail.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Eric Van Hensbergen wrote on Sat, Dec 17, 2022 at 06:52:06PM +0000:
> The writeback_fid fallback code assumes a root uid fallback which
> breaks many server configurations (which don't run as root).  This
> patch switches to generic lookup which will follow argument
> guidence on access modes and default ids to use on failure.

Unfortunately this one will break writes to a file created as 400 I
think
That's the main reason we have this writeback fid afaik -- there are
cases where the user should be able to write to the file, but a plain
open/write won't work... I can't think of anything else than open 400
right now though

I'm sure there's an xfs_io command and xfstest for that, but for now:
python3 -c 'import os; f = os.open("testfile", os.O_CREAT + os.O_RDWR, 0o400); os.write(f, b"ok\n")'

iirc ganesha running as non-root just ignores root requests and opens as
current user-- this won't work for this particular case, but might be
good enough for you... With that said:

> There is a deeper underlying problem with writeback_fids in that
> this fallback is too standard and not an exception due to the way
> writeback mode works in the current implementation.  Subsequent
> patches will try to associate writeback fids from the original user
> either by flushing on close or by holding onto fid until writeback
> completes.

If we can address this problem though I agree we should stop using
wrieback fids as much as we do.
Now fids are refcounted, I think we could just use the normal fid as
writeback fid (getting a ref), and the regular close will not clunk it
so delayed IOs will pass.

Worth a try?
-- 
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
