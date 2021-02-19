Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 856B231F626
	for <lists+v9fs-developer@lfdr.de>; Fri, 19 Feb 2021 10:01:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lD1fe-0005kg-7G; Fri, 19 Feb 2021 09:01:54 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <bigeasy@linutronix.de>) id 1lD1fd-0005kU-9N
 for v9fs-developer@lists.sourceforge.net; Fri, 19 Feb 2021 09:01:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sYMGdW4tGOh6IMOmWxCR9Phs/sS0FjTOFTf7PQrG6oI=; b=DwfJYG8+iJFxLbq588/vUdCOE4
 73DFCSW2WmhWQeLGexhNDQYUlXOpIFtHQ0dRa9Fq1x1oKKLfPFF4gUBFgUzd3FnNY11pb4u7cgSAd
 0YYeCc3QSECmroBMMRBlnWLVvsxAARCLXrHXDD7gTtR8R7+q+C5Vjw4Z6kQ3duxYf3IU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sYMGdW4tGOh6IMOmWxCR9Phs/sS0FjTOFTf7PQrG6oI=; b=TtMfp6bA+CSBiagWOnae0YHdWP
 ARb74p+CRXtOVQmedIwQsGtji6mCzPiAGfchCxycdG967F2W2w08FOhRa15aJ1JXC+K356B6ucOxR
 UFgHz/3MDmGW9u21q8EZ5Gl8oHYkAoOPRX1hoArP9G6H3ossqHV6MjE0yJW0hUydcIoY=;
Received: from galois.linutronix.de ([193.142.43.55])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lD1fZ-00056c-74
 for v9fs-developer@lists.sourceforge.net; Fri, 19 Feb 2021 09:01:52 +0000
Date: Fri, 19 Feb 2021 10:01:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020; t=1613725300;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=sYMGdW4tGOh6IMOmWxCR9Phs/sS0FjTOFTf7PQrG6oI=;
 b=gir2DZ0wP8bxN9dHORw8D3+mvJZh1CTbn86oQQ2TJl4WLkJhoYABpoCKoEzZ1VmA9++KeL
 JsuVvptcepy6skOBehV0KRVpbQYqzmGC4lkdJ5/KT9R+51sm9nE88lfTys/+NKPBrwF15E
 J6H54/iLAGX+Nm98w37D7IhYlMFGUplQM+g9Tymtfy4TIm/ORQ3sFmq6CdaHVrkGr0oNDK
 edD/7xitnMm8poVwB+0CjJp3LOfN0DY53Os+lv1HDE0NCFIfNDK++rQK+BQYpH9EaPy/mg
 qK0cZ/bOck6QSW7wXl0+BL6eWfvn+w5WF3b7B/FpD6BXCILmDV/yEKyXZVFZsA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
 s=2020e; t=1613725300;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=sYMGdW4tGOh6IMOmWxCR9Phs/sS0FjTOFTf7PQrG6oI=;
 b=cnhYW2LGCMeyzE+bK/JwqeT8ncoeasHmG5Ij57QrePvmlINfXPYKRoln4aGihuCrTajOqH
 CjRRuRuh7C+CzDBw==
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: David Howells <dhowells@redhat.com>
Message-ID: <20210219090138.c5w7dnf7llaw4rar@linutronix.de>
References: <20210216093044.GA24615@lst.de> <20210216084230.GA23669@lst.de>
 <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
 <1376938.1613429183@warthog.procyon.org.uk>
 <1419965.1613467771@warthog.procyon.org.uk>
 <2017129.1613656956@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2017129.1613656956@warthog.procyon.org.uk>
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
X-Headers-End: 1lD1fZ-00056c-74
Subject: Re: [V9fs-developer] [PATCH 34/33] netfs: Pass flag rather than use
 in_softirq()
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
Cc: David Wysochanski <dwysocha@redhat.com>, linux-cifs@vger.kernel.org,
 linux-nfs@vger.kernel.org, linux-afs@lists.infradead.org,
 Jeff Layton <jlayton@redhat.com>, linux-fsdevel@vger.kernel.org,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Matthew Wilcox <willy@infradead.org>, Christoph Hellwig <hch@lst.de>,
 Steve French <sfrench@samba.org>, linux-mm@kvack.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 Marc Dionne <marc.dionne@auristor.com>, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 2021-02-18 14:02:36 [+0000], David Howells wrote:
> How about the attached instead?

Thank you for that flag.

> David

Sebastian


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
