Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 19BDB5714A6
	for <lists+v9fs-developer@lfdr.de>; Tue, 12 Jul 2022 10:32:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1oBBJS-00038Z-Lr; Tue, 12 Jul 2022 08:32:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <hbh25y@gmail.com>) id 1oBBJJ-00037Z-Be
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Jul 2022 08:32:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+ihihgGZUmY2/0a390+NibBsCD73DBtUh+DsJP+XRRo=; b=iFhqnsRYYiJwWZ5waLxTdFIOIx
 ZSCxNrI2rF0R0X54ldxaRqbRy7wDujhz7aYEuQse7RIMMfFp5xWhhw8L0mIH6/YjQV1nyWWfVYGkm
 1hyIyrqh7S3Fu9CFH6Su/m+M8hC7QjI6cqIyTB7bKn0p/Efp51ToDB5S2sC1oHaFwuig=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+ihihgGZUmY2/0a390+NibBsCD73DBtUh+DsJP+XRRo=; b=Ie1wQY70bBg8iiZwSaqq9pjrD2
 cK354aKPtmso7N4McEdkMeMgIt72FGS5YBP1lWHJfHntzy44mQhHl6au1MsESwm1Iz/G0cZaxmDJq
 Iso20Ex4j/Rd7VB/LHo/+3LiO4uNIqrmvU+QyZGYW3LBf7xs9ZWZRrX8nKyZnjMOusro=;
Received: from mail-pg1-f193.google.com ([209.85.215.193])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1oBBJI-0000rt-CH
 for v9fs-developer@lists.sourceforge.net; Tue, 12 Jul 2022 08:32:01 +0000
Received: by mail-pg1-f193.google.com with SMTP id q82so6947784pgq.6
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 12 Jul 2022 01:32:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+ihihgGZUmY2/0a390+NibBsCD73DBtUh+DsJP+XRRo=;
 b=mKKKcvcQqUipPu54C0OosbvkxjyBPI2HgOtfEtbeG8slxpHUF8od8fQ2iZsY8ZLxHI
 ++9GISY25O/wK+QWLDCLgyaztpX8ylXn6d482xCtD2oMrqbi5Tmmrf/ISqrw5d2Nc4Se
 1AfpeW4cC/a+CZfGUzw9Fci+Rj6fNI8jAX8exDsMr8tdowV1D+968Uc4Fk130zG4M/K5
 KTylvJJUAi/K75fBB4612BGe/G+2hp8ct7/UT6ZEYfx7upbgZnlpoKoRpzUYjOUcSh+C
 84qP0ZLiruE+2exe8/Mnw1dCZwjGXoh5/RA6wOFdU47vwwAFrj6G7nF6MFEb6fw6nkyp
 lDUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+ihihgGZUmY2/0a390+NibBsCD73DBtUh+DsJP+XRRo=;
 b=W4V+hMeH+vnQ55wXvK0RUC0lIcfmBmYba0gWVTXgValqmkTjRK3agUkhGSq0U23fAt
 YVu2h3f8WDr3Ll0pzHU2SPeyFs4Z+01KkZPfRmE3cpGvzN8BPhG//0m14TwUfQQOx9sW
 kKGM1ULf10QqufAeK64M0Vs+Mco/Moi1xV5IAm7tl57ipW+zWdU8mN8QvoQXOP4Ia6+V
 IHGeluimiG/TlH78+wYwM9eqYIAl44e3FYnSk2CTFyH95HPzRj7SiX27Hq29hK4Zu+uS
 OgkoWl0C8hKCNM7eaBAkD9wYUqLl7HUscdbv6+IFsZNgMMAea9bh+ysFp0a5jk0Nm1yV
 IToQ==
X-Gm-Message-State: AJIora9T7bUPLmjuZtXRHCOycNhrvGvAmJDET70WoewEphR7iKkmeNO9
 WT92AlBnk7J8j+K+BSrTFJi3PVJQfvrWodgdu8R+0WkU8S8=
X-Google-Smtp-Source: AGRyM1uqacAKT5j+jPbReGRauD1rjYv6gDcFXZyHW4LIDJSOWF/Vx7qbRWE+HLfP2QWQe3cjgidYPX/lkKAKCOjxVFE=
X-Received: by 2002:a05:6a00:3006:b0:52a:ca34:7e43 with SMTP id
 ay6-20020a056a00300600b0052aca347e43mr11603050pfb.10.1657614714676; Tue, 12
 Jul 2022 01:31:54 -0700 (PDT)
MIME-Version: 1.0
References: <20220711065907.23105-1-hbh25y@gmail.com>
 <YsvTvalrwd4bxO75@codewreck.org>
 <f68df7cf-4b72-4c01-9492-103fa67c5e99@gmail.com>
 <Ys0PYaD7x7InUpc+@codewreck.org>
In-Reply-To: <Ys0PYaD7x7InUpc+@codewreck.org>
From: Hangyu Hua <hbh25y@gmail.com>
Date: Tue, 12 Jul 2022 16:31:43 +0800
Message-ID: <CAOo-nL+B1RkQ8PKeH+bs9gjX+Fq72PnyB9No+HiMoJ8azDBbag@mail.gmail.com>
To: asmadeus@codewreck.org
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2022/7/12 14:06, > Hangyu Hua wrote on Tue, Jul 12, 2022
 at 11:24:36AM +0800: >> That's a little weird. If you are right, the three
 return paths of this >> function are inconsistent with the hand [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [hbh25y[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.193 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1oBBJI-0000rt-CH
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

On 2022/7/12 14:06, asmadeus@codewreck.org wrote:
> Hangyu Hua wrote on Tue, Jul 12, 2022 at 11:24:36AM +0800:
>> That's a little weird. If you are right, the three return paths of this
>> function are inconsistent with the handling of refcount.
>>
>> static void p9_read_work(struct work_struct *work)
>> {
>> ...
>>      if ((m->rreq) && (m->rc.offset == m->rc.capacity)) {
>>              p9_debug(P9_DEBUG_TRANS, "got new packet\n");
>>              m->rreq->rc.size = m->rc.offset;
>>              spin_lock(&m->client->lock);
>>              if (m->rreq->status == REQ_STATUS_SENT) {
>>                      list_del(&m->rreq->req_list);
>>                      p9_client_cb(m->client, m->rreq, REQ_STATUS_RCVD);      <---- [1]
>>              } else if (m->rreq->status == REQ_STATUS_FLSHD) {
>>                      /* Ignore replies associated with a cancelled request. */
>>                      p9_debug(P9_DEBUG_TRANS,
>>                               "Ignore replies associated with a cancelled request\n");       <---- [2]
>>              } else {
>>                      spin_unlock(&m->client->lock);
>>                      p9_debug(P9_DEBUG_ERROR,
>>                               "Request tag %d errored out while we were reading the reply\n",
>>                               m->rc.tag);
>>                      err = -EIO;
>>                      goto error;     <---- [3]
>>              }
>>              spin_unlock(&m->client->lock);
>>              m->rc.sdata = NULL;
>>              m->rc.offset = 0;
>>              m->rc.capacity = 0;
>>              p9_req_put(m->rreq);    <---- [4]
>>              m->rreq = NULL;
>>      }
>> ...
>> error:
>>      p9_conn_cancel(m, err);         <---- [5]
>>      clear_bit(Rworksched, &m->wsched);
>> }
>>
>> There are three return paths here, [1] and [2] and [3].
>> [1]: m->rreq will be put twice in [1] and [4]. And m->rreq will be deleted
>> from the m->req_list in [1].
>>
>> [2]: m->rreq will be put in [4]. And m->rreq will not be deleted from
>> m->req_list.
>
> when req status got put to FLUSHD the req was dropped from the list
> already and put in p9_fd_cancel, so we shouldn't put it here.
>
>> [3]: m->rreq will be put in [5]. And m->rreq will be deleted from the
>> m->req_list in [5].
>
> On this error case I really can't say anything: it depends on how the
> req got in this state in the first place -- more precisely is it still
> in req_list or not?
>
> But even if it is and we leak it here, we return an error here, so the
> connection will be marked as disconnected and won't be usable anymore.
> The memory will be freed when the user umounts after that.
>
> If we took the time to re-init the rreq->req_list everytime we could
> check if it's empty (don't think we can rely on it being poisoned), but
> I just don't think it's worth it: it's better to consume a bit more
> memory until umount than to risk a UAF.
>
> (note: while writing this I noticed p9_tag_cleanup() in
> p9_client_destroy() only tracks requests still in the idr, so doesn't
> work for requests that went through p9_tag_remove().
> We don't need p9_tag_remove() anymore so I've just gotten rid of it and
> we will catch these now)
>
>
>> If p9_tag_lookup keep the refcount of req which is in m->req_list. There
>> will be a double put in return path [1] and a potential UAF in return path
>> [2]. And this also means a req in m->req_list without getting refcount
>> before p9_tag_lookup.
>
> That is the nominal path, we'd notice immediately if there are too many
> puts there.
> A request is initialized with two refs so that we can have one for the
> transport ((a), for fd, "is the request tracked in a list?") and one for
> the main thread ((b), p9_client_rpc which will put it at the end)
> Then you get a third ref from p9_tag_lookup that I was forgetting about,
> (c).
>
> Going through [1] removes it from the list, and removes the associated
> ref (a), then through p9_client_cb which removes ref (c) and wakes up
> p9_client_rpc which takes the last ref (b), freeing the request.
>

I think the normal path is right beacuase p9_tag_lookup and [4] keep the
balance of refcount. This just proves that error path may have refcount
leak. Beacause error path only put refcount once. In general, either [4]
of the normal path is redundant(like you said, this is easy to catch),
or the error path may have a refcount leak.

But you are right, it'll be caught on umount.

>
> Now you were correct on one of these error paths not described in your
> last mail: we -are- missing a p9_req_ut in the "No recv fcall for tag
> %d" error path shortly after p9_tag_lookup, for the ref obtained from
> p9_tag_lookup itself -- feel free to resend a patch with just that one.
> But once again the connection is now unusable and it'll be caught on
> umount so it's not the end of the world...
>
> (I'd appreciate if you base the new patch on top of
> https://github.com/martinetd/linux/commits/9p-next )
>

I see. I will make a new patch later.

>>
>> static void p9_write_work(struct work_struct *work)
>> {
>> ...
>>              list_move_tail(&req->req_list, &m->req_list);
>>
>>              m->wbuf = req->tc.sdata;
>>              m->wsize = req->tc.size;
>>              m->wpos = 0;
>>              p9_req_get(req);
>> ...
>> }
>>
>> But if you check out p9_write_work, a refcount already get after
>> list_move_tail. We don't need to rely on p9_tag_lookup to keep a list's
>> refcount.
>
> This refcount is because we are keeping a ref in m->wreq, and is freed
> when m->wreq is set back to null when the packet is done writing a few
> lines below (but possibly in another call of the function).
>
> refs don't have to come from p9_tag_lookup, they're managing pointers
> lifecycle: we're making a copy of the pointer, so we should increment
> the refcount so another thread can't free the req under us. In this case
> the p9_req_get() is under the trans fd m->client->lock where we got the
> req from the list, so req can't be freed between its obtention from the
> list and then; once the lock is dropped the req is protected by the ref.
>
>

My fault. I misunderstood here.

Thanks,
Hangyu



>> Whatsmore, code comments in p9_tag_alloc also proves that the
>> refcount get by p9_tag_lookup is a temporary refcount.
>
> comments don't prove anything, but yes I forgot p9_tag_alloc takes a ref
> when I commented earlier, sorry.
>
>>> This one isn't as clear cut, I see that they put the client in a
>>> FLUSHING state but nothing seems to acton on it... But if this happens
>>> we're already in the use after free realm -- it means rc.sdata was
>>> already set so the other thread could be calling p9_client_cb anytime if
>>> it already hasn't, and yet another thread will then do the final ref put
>>> and free this.
>>> We shouldn't free this here as that would also be an overflow. The best
>>> possible thing to do at this point is just to stop using that pointer.
>>>
>>
>> But p9_tag_lookup have a lock inside. Doesn't this mean p9_tag_lookup won't
>> return a freed req? Otherwise we should fix the lock to avoid falling into
>> the use after free realm.
>
> Right, that falls into the p9_tag_lookup ref, I had implemented this
> better than I thought I did...
>
> I agree that one is also more correct to add, although I'd really want
> to make some rdma setup and trigger a few errors to test.
>  > --
> Dominique


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
