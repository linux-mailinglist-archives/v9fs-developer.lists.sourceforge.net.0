Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B1923D16C7
	for <lists+v9fs-developer@lfdr.de>; Wed, 21 Jul 2021 21:01:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1m6HSx-0006h4-0E; Wed, 21 Jul 2021 19:01:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <jlayton@redhat.com>) id 1m6HSu-0006gu-Sm
 for v9fs-developer@lists.sourceforge.net; Wed, 21 Jul 2021 19:01:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1gH3Ux0CT6hU+v/YeUAIBalSzkDA3DKDpAjmYag8B8E=; b=mWCt4WthhGM62WYZkW3+C8Qv/+
 oazFcKmAdtL5B6OMODCbeL3jsm1C9uy6qN6xIauiN/TFu5/z3FYSKK80NFoloLCfpS6uLpxGpNG+V
 24pSoZ6054n1VpTgdZtM5ndm32lcXoYMXl/lPjajr9AmCxD5qNRNoHFSgyK6j90qupDk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1gH3Ux0CT6hU+v/YeUAIBalSzkDA3DKDpAjmYag8B8E=; b=a5S5TuHdh4FvP6SH693DTX5yQc
 qh40/CvsWIqAjCEws9E00BQVcNDWlscYl/b+8dSd5mV3a9DqfL7PN3SrFA3ifaW9wB+fHO/7N63fD
 Qgj5E6dkX8XcxceGEvJ+2/fc+d3lN5DVx5dzI9Ru7hKqS9y6dB6LyxIJir73MAl7WjZk=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1m6HSf-0006GG-Au
 for v9fs-developer@lists.sourceforge.net; Wed, 21 Jul 2021 19:01:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1626894047;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=1gH3Ux0CT6hU+v/YeUAIBalSzkDA3DKDpAjmYag8B8E=;
 b=VWha/EgDRfOK8PiKeHoq/+hv9G9oq2wG+h67hbSeSx/pqF88eNqTiG/7Wpf0atguaSn9OK
 CiebzZTwa9wgHsAalzadcM6sIA7odfPRyZhRGWNm0CmCbLTQ0GrjScrQ43M85/sburDjbs
 pQNZzFA2Q4D+A+qPvz+58U3U8JKZbeg=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-428-MuGZCDXPMH2w9mns8HG_ng-1; Wed, 21 Jul 2021 15:00:45 -0400
X-MC-Unique: MuGZCDXPMH2w9mns8HG_ng-1
Received: by mail-qt1-f197.google.com with SMTP id
 z19-20020a05622a0613b02902682e86c382so2128277qta.4
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 21 Jul 2021 12:00:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=1gH3Ux0CT6hU+v/YeUAIBalSzkDA3DKDpAjmYag8B8E=;
 b=QGOjDImNzujtfq+eRhEtqO1/9PBXn53sFp9w3mGguPst+tIpuQjKFGJkPrvoES70z5
 Q5ceOAk2us4dp05ScQIjCJ73RriJAr2+fa/l25mKvYHwUepH7U92/JGz/upBYyL8+inT
 cZyK+TE9hht5bodYsZtvGzRc/4yEqFlm/y4D9/vfFmhzhoMs/6lW/hKU+ggeYx01KH6D
 x5Hf5uFJFPO8oVWK6lY+CiGATo6+RWuPjrZHdCvo39NKEZ7YFnk8NfPIE72qOrHdxto4
 Xn/Iwy9Es+d1dehC4yPGqMTOEx+pT0sMEmqpEgOGRczk1OC74npO0zoQfukcAKgoEafa
 w7HQ==
X-Gm-Message-State: AOAM532MMOKMXmUKMOqlAlJLNikBpoWJaainueJSKZszWJgwOVTaIfQS
 EUHzxD6xOqJ7INwdybb3MXqI80X8IE9XZerKnpfPZIGezC87Rg5yYjmZAaB4bRA1lLb5wsxqz2t
 7y4yLQEaErRVPMuFaNTbqMpfkIrPSXm7phEk=
X-Received: by 2002:a0c:e70f:: with SMTP id d15mr4739135qvn.47.1626894045391; 
 Wed, 21 Jul 2021 12:00:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzLJs8XXnPDqD0EYRCTwpJGY8jpuBbe7MH5DxMPfLcBBLk08k/UTRTJHL2M7llSs52l9VDF/g==
X-Received: by 2002:a0c:e70f:: with SMTP id d15mr4739113qvn.47.1626894045207; 
 Wed, 21 Jul 2021 12:00:45 -0700 (PDT)
Received: from [192.168.1.3] (68-20-15-154.lightspeed.rlghnc.sbcglobal.net.
 [68.20.15.154])
 by smtp.gmail.com with ESMTPSA id x7sm9290487qtw.24.2021.07.21.12.00.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Jul 2021 12:00:44 -0700 (PDT)
Message-ID: <56b3c140a388b98f74f2e71c656e77655da3129f.camel@redhat.com>
From: Jeff Layton <jlayton@redhat.com>
To: David Howells <dhowells@redhat.com>
Date: Wed, 21 Jul 2021 15:00:43 -0400
In-Reply-To: <298117.1626893692@warthog.procyon.org.uk>
References: <e7a3b850e8a42845f4e020c7642743b3dce2b9f1.camel@redhat.com>
 <162687506932.276387.14456718890524355509.stgit@warthog.procyon.org.uk>
 <162687511125.276387.15493860267582539643.stgit@warthog.procyon.org.uk>
 <298117.1626893692@warthog.procyon.org.uk>
User-Agent: Evolution 3.40.3 (3.40.3-1.fc34)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=jlayton@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.8 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1m6HSf-0006GG-Au
Subject: Re: [V9fs-developer] [RFC PATCH 03/12] netfs: Remove
 netfs_read_subrequest::transferred
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
Cc: David Wysochanski <dwysocha@redhat.com>,
 Shyam Prasad N <nspmangalore@gmail.com>, linux-nfs@vger.kernel.org,
 Miklos Szeredi <miklos@szeredi.hu>, linux-cifs@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 linux-afs@lists.infradead.org, Steve French <sfrench@samba.org>,
 linux-mm@kvack.org, linux-cachefs@redhat.com, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Anna Schumaker <anna.schumaker@netapp.com>, devel@lists.orangefs.org,
 Mike Marshall <hubcap@omnibond.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, 2021-07-21 at 19:54 +0100, David Howells wrote:
> Jeff Layton <jlayton@redhat.com> wrote:
> 
> > The above two deltas seem like they should have been in patch #2.
> 
> Yeah.  Looks like at least partially so.
> 
> > > @@ -635,15 +625,8 @@ void netfs_subreq_terminated(struct netfs_read_subrequest *subreq,
> > >  		goto failed;
> > >  	}
> > >  
> > > -	if (WARN(transferred_or_error > subreq->len - subreq->transferred,
> > > -		 "Subreq overread: R%x[%x] %zd > %zu - %zu",
> > > -		 rreq->debug_id, subreq->debug_index,
> > > -		 transferred_or_error, subreq->len, subreq->transferred))
> > > -		transferred_or_error = subreq->len - subreq->transferred;
> > > -
> > >  	subreq->error = 0;
> > > -	subreq->transferred += transferred_or_error;
> > > -	if (subreq->transferred < subreq->len)
> > > +	if (iov_iter_count(&subreq->iter))
> > >  		goto incomplete;
> > >  
> > 
> > I must be missing it, but where does subreq->iter get advanced to the
> > end of the current read? If you're getting rid of subreq->transferred
> > then I think that has to happen above, no?
> 
> For afs, afs_req_issue_op() points fsreq->iter at the subrequest iterator and
> calls afs_fetch_data().  Thereafter, we wend our way to
> afs_deliver_fs_fetch_data() or yfs_deliver_fs_fetch_data() which set
> call->iter to point to that iterator and then call afs_extract_data() which
> passes it to rxrpc_kernel_recv_data(), which eventually passes it to
> skb_copy_datagram_iter(), which advances the iterator.
> 
> For the cache, the subrequest iterator is passed to the cache backend by
> netfs_read_from_cache().  This would be cachefiles_read() which calls
> vfs_iocb_iter_read() which I thought advances the iterator (leastways,
> filemap_read() keeps going until iov_iter_count() reaches 0 or some other stop
> condition occurs and doesn't thereafter call iov_iter_revert()).
> 

Ok, this will probably regress ceph then. We don't really have anything
to do with the subreq->iter at this point and this patch doesn't change
that. If you're going to make this change, it'd be cleaner to also fix
up ceph_netfs_issue_op to advance the iter at the same time.
-- 
Jeff Layton <jlayton@redhat.com>



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
