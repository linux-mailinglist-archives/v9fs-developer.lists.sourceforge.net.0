Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B42C31C93A
	for <lists+v9fs-developer@lfdr.de>; Tue, 16 Feb 2021 12:01:59 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lBy7B-0002EM-CP; Tue, 16 Feb 2021 11:01:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <jlayton@redhat.com>) id 1lBy79-0002EA-Be
 for v9fs-developer@lists.sourceforge.net; Tue, 16 Feb 2021 11:01:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UjPevUc/f1h27YC/iWCBse0mv72F3ucIKOdIwEX5LG8=; b=HnYlTLIwe0E/dgHwCcJSdopY/U
 d1NNGBLj7rqOEIuBvR81Kxf2r4bibopxd+yBwvOMX35pszY5wawVcPscS+/j2uB61GyCKcOUIDK10
 UT4DHQsATcuOMi1SGp7+pfDYlu27fNgQqWgXmXbAUz+gR/3HLNRW911mJAVlei63gqHI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UjPevUc/f1h27YC/iWCBse0mv72F3ucIKOdIwEX5LG8=; b=bkBSlN7/ce2egd7CLqYr4DZeve
 oa/KdAb8UbxOpxEAcKhx2mpYYe3GvzR2RAOuJUCWzKexbKwuPtOa44Q/H2Q8VVd7XadlMqvdtKYzi
 myKWp2kc954m9PX4dzDUHRDfTdEnp7inRGoznzPw4fgRzbuMlok9oyWJGCAZsDj2x3+U=;
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-SHA384:256) (Exim 4.92.2)
 id 1lBy6k-00Amej-Dc
 for v9fs-developer@lists.sourceforge.net; Tue, 16 Feb 2021 11:01:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1613473282;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=UjPevUc/f1h27YC/iWCBse0mv72F3ucIKOdIwEX5LG8=;
 b=AvkgOPp+DBPc0FrKWJwDubOtuTW7N7QZR8zo7kgmXnXHIMctpATd5nCqJxHvmK79+qP+s2
 P2dvCOwOuspzHa8D9x+3Z2BShEWiivzSmv4nj2i+hOXHyXL4DuFXTaDgfZ1qTrAhE669IH
 yYZhIxt6TEZ6qc+Gby+0O1WX0NUh1rg=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-138-MgR7szV3Ojym5etRxAohBQ-1; Tue, 16 Feb 2021 06:01:21 -0500
X-MC-Unique: MgR7szV3Ojym5etRxAohBQ-1
Received: by mail-qk1-f197.google.com with SMTP id b27so7761212qkl.11
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 16 Feb 2021 03:01:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=UjPevUc/f1h27YC/iWCBse0mv72F3ucIKOdIwEX5LG8=;
 b=h925WBaXW+f3MJrg57FEJop65ci98yNk4Zs0GdwS3OK5Vtg58RDCiPbEnQJunywROr
 RJwzxpnwzl9gNVTjMznAi9LIMg5Ah5njQJE+7i87F/mws4kHigH5+l/hwlKA+N1vmlxt
 C4G3DW95pag9234kh53O24Orf0nMDjfWYGzlwEbalPjD3S/Ov8H80xiDSR/L2OlW92T8
 id6y6sAMLgjGzSs+foe+xYRgBeOfDOAaudxDEeItmjyN33cTIGbcwOwH9oRmhN+r1+ay
 Y6SAnof47GBjiaO7fUXFJi3ssv/N9L3FSLAml6wCVf32x8vploIvue5uoOnH8et7wLpc
 PgMA==
X-Gm-Message-State: AOAM530ReQ/+a/kffVNJZY+yp5mE/RBac3AtR2ZgkS1cY3NGZtDpFAsi
 B5Ur9HQmV9LoiynVt7GHtRAXXmjA3uDrhXGho92WQ4wsFgC0ul8GK1b8fETHpsoVsp/h8MZDaFb
 tBpEDEkdon0jAxqIc6OXGdnlloZ7znnfb67s=
X-Received: by 2002:a05:6214:292:: with SMTP id
 l18mr19206670qvv.5.1613473277869; 
 Tue, 16 Feb 2021 03:01:17 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwfxkMdLP8GICFrYv5qcHZzcwXchEHaGAgSDG1h4XsMOzzlGSXOw3kqQRk/cyROnYM/B9O9Vw==
X-Received: by 2002:a05:6214:292:: with SMTP id
 l18mr19206653qvv.5.1613473277670; 
 Tue, 16 Feb 2021 03:01:17 -0800 (PST)
Received: from tleilax.poochiereds.net
 (68-20-15-154.lightspeed.rlghnc.sbcglobal.net. [68.20.15.154])
 by smtp.gmail.com with ESMTPSA id n5sm13100571qtd.5.2021.02.16.03.01.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Feb 2021 03:01:17 -0800 (PST)
Message-ID: <752a8c91b7a418fa52cb8a8f28cb30155a574904.camel@redhat.com>
From: Jeff Layton <jlayton@redhat.com>
To: Steve French <smfrench@gmail.com>
Date: Tue, 16 Feb 2021 06:01:16 -0500
In-Reply-To: <CAH2r5mvPLivjuE=cbijzGSHOvx-hkWSWbcxpoBnJX-BR9pBskQ@mail.gmail.com>
References: <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
 <9e49f96cd80eaf9c8ed267a7fbbcb4c6467ee790.camel@redhat.com>
 <CAH2r5mvPLivjuE=cbijzGSHOvx-hkWSWbcxpoBnJX-BR9pBskQ@mail.gmail.com>
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jlayton@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [63.128.21.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
 0.0 TIME_LIMIT_EXCEEDED    Exceeded time limit / deadline
X-Headers-End: 1lBy6k-00Amej-Dc
Subject: Re: [V9fs-developer] [PATCH 00/33] Network fs helper library &
 fscache kiocb API [ver #3]
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
Cc: David Wysochanski <dwysocha@redhat.com>, Steve French <sfrench@samba.org>,
 linux-nfs <linux-nfs@vger.kernel.org>, CIFS <linux-cifs@vger.kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 LKML <linux-kernel@vger.kernel.org>, Matthew Wilcox <willy@infradead.org>,
 linux-afs@lists.infradead.org, David Howells <dhowells@redhat.com>,
 linux-mm <linux-mm@kvack.org>, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, Anna Schumaker <anna.schumaker@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Mon, 2021-02-15 at 18:40 -0600, Steve French wrote:
> Jeff,
> What are the performance differences you are seeing (positive or
> negative) with ceph and netfs, especially with simple examples like
> file copy or grep of large files?
> 
> It could be good if netfs simplifies the problem experienced by
> network filesystems on Linux with readahead on large sequential reads
> - where we don't get as much parallelism due to only having one
> readahead request at a time (thus in many cases there is 'dead time'
> on either the network or the file server while waiting for the next
> readpages request to be issued).   This can be a significant
> performance problem for current readpages when network latency is long
> (or e.g. in cases when network encryption is enabled, and hardware
> offload not available so time consuming on the server or client to
> encrypt the packet).
> 
> Do you see netfs much faster than currentreadpages for ceph?
> 
> Have you been able to get much benefit from throttling readahead with
> ceph from the current netfs approach for clamping i/o?
> 

I haven't seen big performance differences at all with this set. It's
pretty much a wash, and it doesn't seem to change how the I/Os are
ultimately driven on the wire. For instance, the clamp_length op
basically just mirrors what ceph does today -- it ensures that the
length of the I/O can't go past the end of the current object.

The main benefits are that we get a large swath of readpage, readpages
amd write_begin code out of ceph altogether. All of the netfs's need to
gather and vet pages for I/O, etc. Most of that doesn't have anything to
do with the filesystem itself. By offloading that into the netfs lib,
most of that is taken care of for us and we don't need to bother with
doing that ourselves.

-- 
Jeff Layton <jlayton@redhat.com>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
