Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F08057121B
	for <lists+v9fs-developer@lfdr.de>; Tue, 12 Jul 2022 08:07:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oB92z-0004SW-Nb; Tue, 12 Jul 2022 06:07:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <asmadeus@codewreck.org>) id 1oB92x-0004SN-Iq
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Jul 2022 06:06:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Oei6nGCRVDIFiTLCYzG4olbX/seA/soTnXGc+IcXkbA=; b=HqLzTESr54pVIOUEkaWRYYyB4h
 YK9Yw1uacfrr+ZhGeIbWGRDcSdJbULyyVAr4jJ3PKktIkalYZC9wN6TwveSCz+6caYHzz5tJw+Jb8
 vNqCcoIG/IkiJLDPOWYjMPGIsqNsFKA1EJ3HSZvr5xzAn8PLBewItTLGuvO6TqFS++fc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Oei6nGCRVDIFiTLCYzG4olbX/seA/soTnXGc+IcXkbA=; b=LGH9FrpGX4T170+AU4Ggy898yO
 CetMfQxubihPjnfn8TFm1nPuEFKzmvNQYbuOz88YbjytZ7lPLTS4kR6R62UUvCJf20kGKy2rEUaOO
 hhuzrgR8QXFw96VGWQZcrLVAnZrhkEMwf9E9k3dvCztE8aCUECwea8qQlMMJT9wOuWvA=;
Received: from nautica.notk.org ([91.121.71.147])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1oB92u-0006gu-Bx
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Jul 2022 06:06:59 +0000
Received: by nautica.notk.org (Postfix, from userid 108)
 id 51545C01F; Tue, 12 Jul 2022 08:06:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657606009; bh=Oei6nGCRVDIFiTLCYzG4olbX/seA/soTnXGc+IcXkbA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Nw8anNgxe4VAdmnH1L9hXpyoFSiGLVvs7e6r0fUnWdSCtAwWO49kyYCUBj6Y5/Kd4
 HOzYdqtsh/OjGKF8YNOuvTS8sFALGHGN+CYX1utKfW5KfNpinJP1jx2DKZvioj2k6w
 /u7U8OASYLOh0ciXsOvg0KPI6gqado33BkmDHVUvybydEe/lXFgwAzs4u5rSmkl6hA
 qjwUbT6BsaTiBnPViMBGHTxiVJzAtx5s7RON7OdK2zqFMqcEKzity2cEHSBoufBq0B
 U8PNJjR1Y1MyveOi1EBsrNWNuY1phpt6Ks/vCJrXt7Qm/0RLQ4DNiiE96eqMNI2v3v
 432JnLmF6XyYw==
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on nautica.notk.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=UNPARSEABLE_RELAY
 autolearn=unavailable version=3.3.2
Received: from odin.codewreck.org (localhost [127.0.0.1])
 by nautica.notk.org (Postfix) with ESMTPS id 5F191C009;
 Tue, 12 Jul 2022 08:06:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=codewreck.org; s=2;
 t=1657606008; bh=Oei6nGCRVDIFiTLCYzG4olbX/seA/soTnXGc+IcXkbA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=3B3RrEAEVAJkX7uuNdvc44x4wrAh3AA7NTxwiPicFYXICpCTUE22X7JCfauJZ+J2y
 ZM66sIDqK5U52pMU1OTYhUyqXk6whOc5pnHKl6lrQP71VU8aavtp8P0f/dDGIEzTTR
 NPINWN90iNavo0XGruqu1qeyxPT1CTl5BEiTU0KzOK3xs+HoWt8y46z9k7X1xe2Q+h
 7XybKi8tFU+P5N9nFxgXfs0+tdALfH/aWA607NUUpTQIGVUYEAi4f26llYSFGru4Ly
 sl0yFFSTnrlUtw7OeIHnWN5iuHFmALG9kUNqdUUsnxzgs0uWvQqy6UvrntrIvxzs+g
 pT9ZJi0Bm1ZAA==
Received: from localhost (odin.codewreck.org [local])
 by odin.codewreck.org (OpenSMTPD) with ESMTPA id f581a640;
 Tue, 12 Jul 2022 06:06:40 +0000 (UTC)
Date: Tue, 12 Jul 2022 15:06:25 +0900
From: asmadeus@codewreck.org
To: Hangyu Hua <hbh25y@gmail.com>
Message-ID: <Ys0PYaD7x7InUpc+@codewreck.org>
References: <20220711065907.23105-1-hbh25y@gmail.com>
 <YsvTvalrwd4bxO75@codewreck.org>
 <f68df7cf-4b72-4c01-9492-103fa67c5e99@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f68df7cf-4b72-4c01-9492-103fa67c5e99@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hangyu Hua wrote on Tue, Jul 12, 2022 at 11:24:36AM +0800:
 > That's a little weird. If you are right, the three return paths of this
 > function are inconsistent with the handling of refcount. > > stat [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-Headers-End: 1oB92u-0006gu-Bx
Subject: Re: [V9fs-developer] [PATCH] net: 9p: fix possible refcount leak in
 p9_read_work() and recv_done()
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
Cc: lucho@ionkov.net, ericvh@gmail.com, netdev@vger.kernel.org,
 linux_oss@crudebyte.com, linux-kernel@vger.kernel.org, edumazet@google.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, tomasbortoli@gmail.com,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Hangyu Hua wrote on Tue, Jul 12, 2022 at 11:24:36AM +0800:
> That's a little weird. If you are right, the three return paths of this
> function are inconsistent with the handling of refcount.
> 
> static void p9_read_work(struct work_struct *work)
> {
> ...
> 	if ((m->rreq) && (m->rc.offset == m->rc.capacity)) {
> 		p9_debug(P9_DEBUG_TRANS, "got new packet\n");
> 		m->rreq->rc.size = m->rc.offset;
> 		spin_lock(&m->client->lock);
> 		if (m->rreq->status == REQ_STATUS_SENT) {
> 			list_del(&m->rreq->req_list);
> 			p9_client_cb(m->client, m->rreq, REQ_STATUS_RCVD);	<---- [1]
> 		} else if (m->rreq->status == REQ_STATUS_FLSHD) {
> 			/* Ignore replies associated with a cancelled request. */
> 			p9_debug(P9_DEBUG_TRANS,
> 				 "Ignore replies associated with a cancelled request\n");	<---- [2]
> 		} else {
> 			spin_unlock(&m->client->lock);
> 			p9_debug(P9_DEBUG_ERROR,
> 				 "Request tag %d errored out while we were reading the reply\n",
> 				 m->rc.tag);
> 			err = -EIO;
> 			goto error;	<---- [3]
> 		}
> 		spin_unlock(&m->client->lock);
> 		m->rc.sdata = NULL;
> 		m->rc.offset = 0;
> 		m->rc.capacity = 0;
> 		p9_req_put(m->rreq);	<---- [4]
> 		m->rreq = NULL;
> 	}
> ...
> error:
> 	p9_conn_cancel(m, err);		<---- [5]
> 	clear_bit(Rworksched, &m->wsched);
> }
> 
> There are three return paths here, [1] and [2] and [3].
> [1]: m->rreq will be put twice in [1] and [4]. And m->rreq will be deleted
> from the m->req_list in [1].
> 
> [2]: m->rreq will be put in [4]. And m->rreq will not be deleted from
> m->req_list.

when req status got put to FLUSHD the req was dropped from the list
already and put in p9_fd_cancel, so we shouldn't put it here.

> [3]: m->rreq will be put in [5]. And m->rreq will be deleted from the
> m->req_list in [5].

On this error case I really can't say anything: it depends on how the
req got in this state in the first place -- more precisely is it still
in req_list or not?

But even if it is and we leak it here, we return an error here, so the
connection will be marked as disconnected and won't be usable anymore.
The memory will be freed when the user umounts after that.

If we took the time to re-init the rreq->req_list everytime we could
check if it's empty (don't think we can rely on it being poisoned), but
I just don't think it's worth it: it's better to consume a bit more
memory until umount than to risk a UAF.

(note: while writing this I noticed p9_tag_cleanup() in
p9_client_destroy() only tracks requests still in the idr, so doesn't
work for requests that went through p9_tag_remove().
We don't need p9_tag_remove() anymore so I've just gotten rid of it and
we will catch these now)


> If p9_tag_lookup keep the refcount of req which is in m->req_list. There
> will be a double put in return path [1] and a potential UAF in return path
> [2]. And this also means a req in m->req_list without getting refcount
> before p9_tag_lookup.

That is the nominal path, we'd notice immediately if there are too many
puts there.
A request is initialized with two refs so that we can have one for the
transport ((a), for fd, "is the request tracked in a list?") and one for
the main thread ((b), p9_client_rpc which will put it at the end)
Then you get a third ref from p9_tag_lookup that I was forgetting about,
(c).

Going through [1] removes it from the list, and removes the associated
ref (a), then through p9_client_cb which removes ref (c) and wakes up
p9_client_rpc which takes the last ref (b), freeing the request.


Now you were correct on one of these error paths not described in your
last mail: we -are- missing a p9_req_ut in the "No recv fcall for tag
%d" error path shortly after p9_tag_lookup, for the ref obtained from
p9_tag_lookup itself -- feel free to resend a patch with just that one.
But once again the connection is now unusable and it'll be caught on
umount so it's not the end of the world...

(I'd appreciate if you base the new patch on top of
https://github.com/martinetd/linux/commits/9p-next )

> 
> static void p9_write_work(struct work_struct *work)
> {
> ...
> 		list_move_tail(&req->req_list, &m->req_list);
> 
> 		m->wbuf = req->tc.sdata;
> 		m->wsize = req->tc.size;
> 		m->wpos = 0;
> 		p9_req_get(req);
> ...
> }
> 
> But if you check out p9_write_work, a refcount already get after
> list_move_tail. We don't need to rely on p9_tag_lookup to keep a list's
> refcount.

This refcount is because we are keeping a ref in m->wreq, and is freed
when m->wreq is set back to null when the packet is done writing a few
lines below (but possibly in another call of the function).

refs don't have to come from p9_tag_lookup, they're managing pointers
lifecycle: we're making a copy of the pointer, so we should increment
the refcount so another thread can't free the req under us. In this case
the p9_req_get() is under the trans fd m->client->lock where we got the
req from the list, so req can't be freed between its obtention from the
list and then; once the lock is dropped the req is protected by the ref.


> Whatsmore, code comments in p9_tag_alloc also proves that the
> refcount get by p9_tag_lookup is a temporary refcount.

comments don't prove anything, but yes I forgot p9_tag_alloc takes a ref
when I commented earlier, sorry.

> > This one isn't as clear cut, I see that they put the client in a
> > FLUSHING state but nothing seems to acton on it... But if this happens
> > we're already in the use after free realm -- it means rc.sdata was
> > already set so the other thread could be calling p9_client_cb anytime if
> > it already hasn't, and yet another thread will then do the final ref put
> > and free this.
> > We shouldn't free this here as that would also be an overflow. The best
> > possible thing to do at this point is just to stop using that pointer.
> > 
> 
> But p9_tag_lookup have a lock inside. Doesn't this mean p9_tag_lookup won't
> return a freed req? Otherwise we should fix the lock to avoid falling into
> the use after free realm.

Right, that falls into the p9_tag_lookup ref, I had implemented this
better than I thought I did...

I agree that one is also more correct to add, although I'd really want
to make some rdma setup and trigger a few errors to test.

--
Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
