Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 236F931EB63
	for <lists+v9fs-developer@lfdr.de>; Thu, 18 Feb 2021 16:17:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1lCl3H-0005jk-NB; Thu, 18 Feb 2021 15:17:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <marc.c.dionne@gmail.com>) id 1lCl3G-0005jT-0q
 for v9fs-developer@lists.sourceforge.net; Thu, 18 Feb 2021 15:17:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=O78uEHEfLc3RzIWydBI8NhLr0ai8VEAz3B7vJuFRrAU=; b=GdAxuiv25pzLupI2+xZz8EDrn2
 PfBTNCi/AQFD5LjlG4mrKyPUSQyciNSgbZKsJVqE+Zn+6i3lyQEmEipruZfbcM6zHe/Anp+t4EzNC
 W5T7F6lpRv6K2gdTJnk0ieOhlNRvtslVjkXKtc5TlynEX+aBmKP0B8Hd8owaO7auMl1E=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=O78uEHEfLc3RzIWydBI8NhLr0ai8VEAz3B7vJuFRrAU=; b=iuDPsboAuDTrC/a7UgEvqLeJb8
 /Y2jk3AR7YCCVRnukD1HA2cf0c7lIafDqVbh/nLwiujF7RYqu7VOa4wZizdPupCg+iNupk/Bu9L7O
 P+eurQF3UrSf2K3FSlps4AWHaDJF9X6UJdhu0pU9pQ5QPCOhhCvk4dEGRSBnCLtJoGtQ=;
Received: from mail-wm1-f52.google.com ([209.85.128.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lCl3A-0007jq-FQ
 for v9fs-developer@lists.sourceforge.net; Thu, 18 Feb 2021 15:17:09 +0000
Received: by mail-wm1-f52.google.com with SMTP id w4so4105306wmi.4
 for <v9fs-developer@lists.sourceforge.net>;
 Thu, 18 Feb 2021 07:17:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=O78uEHEfLc3RzIWydBI8NhLr0ai8VEAz3B7vJuFRrAU=;
 b=M/vKAtowq/1EQKfuCDlV8OqKd0CjpCNITBgOxBGn65pvSs4UfxbjFrAtbBdOC/LCeK
 2djhFcQh78OiRjanrtTohghE7v/ZjiBbrgX5Crk0nroEmQCoIL5VDlEeiL5tdlzzI3DO
 UIP1q/lMAZynm504I/jq7MQdaYE0DivN4qewZFqgazLIa9s1Gx66Ovcys48AO9YkipKc
 UIuiNH+caFC0b2XXh1mr2jTj39hF3J+nO17hyn3GtZwJTFzzRsN4+vkWBvHUVTbQM6O9
 +Wkt00LpBZDmLYtqKYLK0kMsqvYRvKBVlPGOKvcBWPwW8y2MaeOCUyna/5xYK/R94fsh
 Wfnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=O78uEHEfLc3RzIWydBI8NhLr0ai8VEAz3B7vJuFRrAU=;
 b=bdS11n2QIMmL67cDuVDigpYCWwUn1NzrtBiPjARqTWgxgXIMu9ee/cVwsUD4Xpjzr0
 HfsfnBa2dXIqUbPKY6pyXGOd2kR/VR4GryMxnuXtjbXycjLfEV20CMpsi0kKAOORCXqb
 7zri5QwPudN8giuDHcs+F09pMIsOSI6vSYsgbCs47ZUWUvwwV26+DU9xCwh+oF9xo5SI
 vqb7WDuNc6sEieDm80IIjvTAy6mGT4y7lfv1i+gZSgALpt8TrzoYjBFMDyj1rju8sRJ9
 hL+zQIv8DpYI9duXh6zhJvz3M2DPxnpddiXJ38Ra2TmZ/mV0wSXR7VEb5sCqOsrfO80c
 2GOQ==
X-Gm-Message-State: AOAM533imftOzNF3ivDIaOQ9RDaThqpindoRbklIZ89EnWjyTNEdYd0e
 5phFuT8/NHB9LIGKPfVsdabvOYElQuHJ3AwUB6E=
X-Google-Smtp-Source: ABdhPJzBksUspxbLUCKUvkOmckHW7dQioOF9DqXHoU4dt6/xOrHPrHFeVMokibswhF+xCJhXqtbBaD+c8tTOwBtB3K0=
X-Received: by 2002:a1c:608b:: with SMTP id u133mr4115769wmb.149.1613661418089; 
 Thu, 18 Feb 2021 07:16:58 -0800 (PST)
MIME-Version: 1.0
References: <20210216084230.GA23669@lst.de>
 <161340385320.1303470.2392622971006879777.stgit@warthog.procyon.org.uk>
 <1376938.1613429183@warthog.procyon.org.uk>
 <1419965.1613467771@warthog.procyon.org.uk>
 <20210216093044.GA24615@lst.de> <2017129.1613656956@warthog.procyon.org.uk>
In-Reply-To: <2017129.1613656956@warthog.procyon.org.uk>
From: Marc Dionne <marc.c.dionne@gmail.com>
Date: Thu, 18 Feb 2021 11:16:46 -0400
Message-ID: <CAB9dFdsLBm9za1DTBmLDm_JpCj5rhOCFck-A7gY_2sPPpPD1hQ@mail.gmail.com>
To: David Howells <dhowells@redhat.com>
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (marc.c.dionne[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.128.52 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.52 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lCl3A-0007jq-FQ
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
 Jeff Layton <jlayton@redhat.com>, Jeff Layton <jlayton@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Matthew Wilcox <willy@infradead.org>, Christoph Hellwig <hch@lst.de>,
 Steve French <sfrench@samba.org>, linux-mm@kvack.org, linux-cachefs@redhat.com,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Trond Myklebust <trondmy@hammerspace.com>, linux-fsdevel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net, ceph-devel@vger.kernel.org,
 Anna Schumaker <anna.schumaker@netapp.com>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Thu, Feb 18, 2021 at 10:03 AM David Howells <dhowells@redhat.com> wrote:
>
> Christoph Hellwig <hch@lst.de> wrote:
>
> > On Tue, Feb 16, 2021 at 09:29:31AM +0000, David Howells wrote:
> > > Is there a better way to do it?  The intent is to process the assessment
> > > phase in the calling thread's context if possible rather than bumping over
> > > to a worker thread.  For synchronous I/O, for example, that's done in the
> > > caller's thread.  Maybe that's the answer - if it's known to be
> > > asynchronous, I have to punt, but otherwise don't have to.
> >
> > Yes, i think you want an explicit flag instead.
>
> How about the attached instead?
>
> David
> ---
> commit 29b3e9eed616db01f15c7998c062b4e501ea6582
> Author: David Howells <dhowells@redhat.com>
> Date:   Mon Feb 15 21:56:43 2021 +0000
>
>     netfs: Pass flag rather than use in_softirq()
>
>     The in_softirq() in netfs_rreq_terminated() works fine for the cache being
>     on a normal disk, as the completion handlers may get called in softirq
>     context, but for an NVMe drive, the completion handler may get called in
>     IRQ context.
>
>     Fix to pass a flag to netfs_subreq_terminated() to indicate whether we
>     think the function isn't being called from a context in which we can do
>     allocations, waits and I/O submissions (such as softirq or interrupt
>     context).  If this flag is set, netfs lib has to punt to a worker thread to
>     handle anything like that.
>
>     The symptom involves warnings like the following appearing and the kernel
>     hanging:
>
>      WARNING: CPU: 0 PID: 0 at kernel/softirq.c:175 __local_bh_enable_ip+0x35/0x50
>      ...
>      RIP: 0010:__local_bh_enable_ip+0x35/0x50
>      ...
>      Call Trace:
>       <IRQ>
>       rxrpc_kernel_begin_call+0x7d/0x1b0 [rxrpc]
>       ? afs_rx_new_call+0x40/0x40 [kafs]
>       ? afs_alloc_call+0x28/0x120 [kafs]
>       afs_make_call+0x120/0x510 [kafs]
>       ? afs_rx_new_call+0x40/0x40 [kafs]
>       ? afs_alloc_flat_call+0xba/0x100 [kafs]
>       ? __kmalloc+0x167/0x2f0
>       ? afs_alloc_flat_call+0x9b/0x100 [kafs]
>       afs_wait_for_operation+0x2d/0x200 [kafs]
>       afs_do_sync_operation+0x16/0x20 [kafs]
>       afs_req_issue_op+0x8c/0xb0 [kafs]
>       netfs_rreq_assess+0x125/0x7d0 [netfs]
>       ? cachefiles_end_operation+0x40/0x40 [cachefiles]
>       netfs_subreq_terminated+0x117/0x220 [netfs]
>       cachefiles_read_complete+0x21/0x60 [cachefiles]
>       iomap_dio_bio_end_io+0xdd/0x110
>       blk_update_request+0x20a/0x380
>       blk_mq_end_request+0x1c/0x120
>       nvme_process_cq+0x159/0x1f0 [nvme]
>       nvme_irq+0x10/0x20 [nvme]
>       __handle_irq_event_percpu+0x37/0x150
>       handle_irq_event+0x49/0xb0
>       handle_edge_irq+0x7c/0x200
>       asm_call_irq_on_stack+0xf/0x20
>       </IRQ>
>       common_interrupt+0xad/0x120
>       asm_common_interrupt+0x1e/0x40
>      ...
>
>     Reported-by: Marc Dionne <marc.dionne@auristor.com>
>     Signed-off-by: David Howells <dhowells@redhat.com>
>     cc: Matthew Wilcox <willy@infradead.org>
>     cc: linux-mm@kvack.org
>     cc: linux-cachefs@redhat.com
>     cc: linux-afs@lists.infradead.org
>     cc: linux-nfs@vger.kernel.org
>     cc: linux-cifs@vger.kernel.org
>     cc: ceph-devel@vger.kernel.org
>     cc: v9fs-developer@lists.sourceforge.net
>     cc: linux-fsdevel@vger.kernel.org
>
> diff --git a/fs/afs/file.c b/fs/afs/file.c
> index 8f28d4f4cfd7..6dcdbbfb48e2 100644
> --- a/fs/afs/file.c
> +++ b/fs/afs/file.c
> @@ -223,7 +223,7 @@ static void afs_fetch_data_notify(struct afs_operation *op)
>
>         if (subreq) {
>                 __set_bit(NETFS_SREQ_CLEAR_TAIL, &subreq->flags);
> -               netfs_subreq_terminated(subreq, error ?: req->actual_len);
> +               netfs_subreq_terminated(subreq, error ?: req->actual_len, false);
>                 req->subreq = NULL;
>         } else if (req->done) {
>                 req->done(req);
> @@ -289,7 +289,7 @@ static void afs_req_issue_op(struct netfs_read_subrequest *subreq)
>
>         fsreq = afs_alloc_read(GFP_NOFS);
>         if (!fsreq)
> -               return netfs_subreq_terminated(subreq, -ENOMEM);
> +               return netfs_subreq_terminated(subreq, -ENOMEM, false);
>
>         fsreq->subreq   = subreq;
>         fsreq->pos      = subreq->start + subreq->transferred;
> @@ -304,7 +304,7 @@ static void afs_req_issue_op(struct netfs_read_subrequest *subreq)
>
>         ret = afs_fetch_data(fsreq->vnode, fsreq);
>         if (ret < 0)
> -               return netfs_subreq_terminated(subreq, ret);
> +               return netfs_subreq_terminated(subreq, ret, false);
>  }
>
>  static int afs_symlink_readpage(struct page *page)
> diff --git a/fs/cachefiles/rdwr2.c b/fs/cachefiles/rdwr2.c
> index 4cea5a2a2d6e..40668bfe6688 100644
> --- a/fs/cachefiles/rdwr2.c
> +++ b/fs/cachefiles/rdwr2.c
> @@ -23,6 +23,7 @@ struct cachefiles_kiocb {
>         };
>         netfs_io_terminated_t   term_func;
>         void                    *term_func_priv;
> +       bool                    was_async;
>  };
>
>  static inline void cachefiles_put_kiocb(struct cachefiles_kiocb *ki)
> @@ -43,10 +44,9 @@ static void cachefiles_read_complete(struct kiocb *iocb, long ret, long ret2)
>         _enter("%ld,%ld", ret, ret2);
>
>         if (ki->term_func) {
> -               if (ret < 0)
> -                       ki->term_func(ki->term_func_priv, ret);
> -               else
> -                       ki->term_func(ki->term_func_priv, ki->skipped + ret);
> +               if (ret >= 0)
> +                       ret += ki->skipped;
> +               ki->term_func(ki->term_func_priv, ret, ki->was_async);
>         }
>
>         cachefiles_put_kiocb(ki);
> @@ -114,6 +114,7 @@ static int cachefiles_read(struct netfs_cache_resources *cres,
>         ki->skipped             = skipped;
>         ki->term_func           = term_func;
>         ki->term_func_priv      = term_func_priv;
> +       ki->was_async           = true;
>
>         if (ki->term_func)
>                 ki->iocb.ki_complete = cachefiles_read_complete;
> @@ -141,6 +142,7 @@ static int cachefiles_read(struct netfs_cache_resources *cres,
>                 ret = -EINTR;
>                 fallthrough;
>         default:
> +               ki->was_async = false;
>                 cachefiles_read_complete(&ki->iocb, ret, 0);
>                 if (ret > 0)
>                         ret = 0;
> @@ -156,7 +158,7 @@ static int cachefiles_read(struct netfs_cache_resources *cres,
>         kfree(ki);
>  presubmission_error:
>         if (term_func)
> -               term_func(term_func_priv, ret < 0 ? ret : skipped);
> +               term_func(term_func_priv, ret < 0 ? ret : skipped, false);
>         return ret;
>  }
>
> @@ -175,7 +177,7 @@ static void cachefiles_write_complete(struct kiocb *iocb, long ret, long ret2)
>         __sb_end_write(inode->i_sb, SB_FREEZE_WRITE);
>
>         if (ki->term_func)
> -               ki->term_func(ki->term_func_priv, ret);
> +               ki->term_func(ki->term_func_priv, ret, ki->was_async);
>
>         cachefiles_put_kiocb(ki);
>  }
> @@ -214,6 +216,7 @@ static int cachefiles_write(struct netfs_cache_resources *cres,
>         ki->len                 = len;
>         ki->term_func           = term_func;
>         ki->term_func_priv      = term_func_priv;
> +       ki->was_async           = true;
>
>         if (ki->term_func)
>                 ki->iocb.ki_complete = cachefiles_write_complete;
> @@ -250,6 +253,7 @@ static int cachefiles_write(struct netfs_cache_resources *cres,
>                 ret = -EINTR;
>                 /* Fall through */
>         default:
> +               ki->was_async = false;
>                 cachefiles_write_complete(&ki->iocb, ret, 0);
>                 if (ret > 0)
>                         ret = 0;
> @@ -265,7 +269,7 @@ static int cachefiles_write(struct netfs_cache_resources *cres,
>         kfree(ki);
>  presubmission_error:
>         if (term_func)
> -               term_func(term_func_priv, -ENOMEM);
> +               term_func(term_func_priv, -ENOMEM, false);
>         return -ENOMEM;
>  }
>
> diff --git a/fs/ceph/addr.c b/fs/ceph/addr.c
> index 0dd64d31eff6..dcfd805d168e 100644
> --- a/fs/ceph/addr.c
> +++ b/fs/ceph/addr.c
> @@ -221,7 +221,7 @@ static void finish_netfs_read(struct ceph_osd_request *req)
>         if (err >= 0 && err < subreq->len)
>                 __set_bit(NETFS_SREQ_CLEAR_TAIL, &subreq->flags);
>
> -       netfs_subreq_terminated(subreq, err);
> +       netfs_subreq_terminated(subreq, err, true);
>
>         num_pages = calc_pages_for(osd_data->alignment, osd_data->length);
>         ceph_put_page_vector(osd_data->pages, num_pages, false);
> @@ -276,7 +276,7 @@ static void ceph_netfs_issue_op(struct netfs_read_subrequest *subreq)
>  out:
>         ceph_osdc_put_request(req);
>         if (err)
> -               netfs_subreq_terminated(subreq, err);
> +               netfs_subreq_terminated(subreq, err, false);
>         dout("%s: result %d\n", __func__, err);
>  }
>
> diff --git a/fs/netfs/read_helper.c b/fs/netfs/read_helper.c
> index 9191a3617d91..5f5de8278499 100644
> --- a/fs/netfs/read_helper.c
> +++ b/fs/netfs/read_helper.c
> @@ -29,12 +29,13 @@ module_param_named(debug, netfs_debug, uint, S_IWUSR | S_IRUGO);
>  MODULE_PARM_DESC(netfs_debug, "Netfs support debugging mask");
>
>  static void netfs_rreq_work(struct work_struct *);
> -static void __netfs_put_subrequest(struct netfs_read_subrequest *);
> +static void __netfs_put_subrequest(struct netfs_read_subrequest *, bool);
>
> -static void netfs_put_subrequest(struct netfs_read_subrequest *subreq)
> +static void netfs_put_subrequest(struct netfs_read_subrequest *subreq,
> +                                bool was_async)
>  {
>         if (refcount_dec_and_test(&subreq->usage))
> -               __netfs_put_subrequest(subreq);
> +               __netfs_put_subrequest(subreq, was_async);
>  }
>
>  static struct netfs_read_request *netfs_alloc_read_request(
> @@ -67,7 +68,8 @@ static void netfs_get_read_request(struct netfs_read_request *rreq)
>         refcount_inc(&rreq->usage);
>  }
>
> -static void netfs_rreq_clear_subreqs(struct netfs_read_request *rreq)
> +static void netfs_rreq_clear_subreqs(struct netfs_read_request *rreq,
> +                                    bool was_async)
>  {
>         struct netfs_read_subrequest *subreq;
>
> @@ -75,7 +77,7 @@ static void netfs_rreq_clear_subreqs(struct netfs_read_request *rreq)
>                 subreq = list_first_entry(&rreq->subrequests,
>                                           struct netfs_read_subrequest, rreq_link);
>                 list_del(&subreq->rreq_link);
> -               netfs_put_subrequest(subreq);
> +               netfs_put_subrequest(subreq, was_async);
>         }
>  }
>
> @@ -83,7 +85,7 @@ static void netfs_free_read_request(struct work_struct *work)
>  {
>         struct netfs_read_request *rreq =
>                 container_of(work, struct netfs_read_request, work);
> -       netfs_rreq_clear_subreqs(rreq);
> +       netfs_rreq_clear_subreqs(rreq, false);
>         if (rreq->netfs_priv)
>                 rreq->netfs_ops->cleanup(rreq->mapping, rreq->netfs_priv);
>         trace_netfs_rreq(rreq, netfs_rreq_trace_free);
> @@ -93,10 +95,10 @@ static void netfs_free_read_request(struct work_struct *work)
>         netfs_stat_d(&netfs_n_rh_rreq);
>  }
>
> -static void netfs_put_read_request(struct netfs_read_request *rreq)
> +static void netfs_put_read_request(struct netfs_read_request *rreq, bool was_async)
>  {
>         if (refcount_dec_and_test(&rreq->usage)) {
> -               if (in_softirq()) {
> +               if (was_async) {
>                         rreq->work.func = netfs_free_read_request;
>                         if (!queue_work(system_unbound_wq, &rreq->work))
>                                 BUG();
> @@ -131,12 +133,15 @@ static void netfs_get_read_subrequest(struct netfs_read_subrequest *subreq)
>         refcount_inc(&subreq->usage);
>  }
>
> -static void __netfs_put_subrequest(struct netfs_read_subrequest *subreq)
> +static void __netfs_put_subrequest(struct netfs_read_subrequest *subreq,
> +                                  bool was_async)
>  {
> +       struct netfs_read_request *rreq = subreq->rreq;
> +
>         trace_netfs_sreq(subreq, netfs_sreq_trace_free);
> -       netfs_put_read_request(subreq->rreq);
>         kfree(subreq);
>         netfs_stat_d(&netfs_n_rh_sreq);
> +       netfs_put_read_request(rreq, was_async);
>  }
>
>  /*
> @@ -152,11 +157,12 @@ static void netfs_clear_unread(struct netfs_read_subrequest *subreq)
>         iov_iter_zero(iov_iter_count(&iter), &iter);
>  }
>
> -static void netfs_cache_read_terminated(void *priv, ssize_t transferred_or_error)
> +static void netfs_cache_read_terminated(void *priv, ssize_t transferred_or_error,
> +                                       bool was_async)
>  {
>         struct netfs_read_subrequest *subreq = priv;
>
> -       netfs_subreq_terminated(subreq, transferred_or_error);
> +       netfs_subreq_terminated(subreq, transferred_or_error, was_async);
>  }
>
>  /*
> @@ -186,7 +192,7 @@ static void netfs_fill_with_zeroes(struct netfs_read_request *rreq,
>  {
>         netfs_stat(&netfs_n_rh_zero);
>         __set_bit(NETFS_SREQ_CLEAR_TAIL, &subreq->flags);
> -       netfs_subreq_terminated(subreq, 0);
> +       netfs_subreq_terminated(subreq, 0, false);
>  }
>
>  /*
> @@ -215,11 +221,11 @@ static void netfs_read_from_server(struct netfs_read_request *rreq,
>  /*
>   * Release those waiting.
>   */
> -static void netfs_rreq_completed(struct netfs_read_request *rreq)
> +static void netfs_rreq_completed(struct netfs_read_request *rreq, bool was_async)
>  {
>         trace_netfs_rreq(rreq, netfs_rreq_trace_done);
> -       netfs_rreq_clear_subreqs(rreq);
> -       netfs_put_read_request(rreq);
> +       netfs_rreq_clear_subreqs(rreq, was_async);
> +       netfs_put_read_request(rreq, was_async);
>  }
>
>  /*
> @@ -228,7 +234,8 @@ static void netfs_rreq_completed(struct netfs_read_request *rreq)
>   *
>   * May be called in softirq mode and we inherit a ref from the caller.
>   */
> -static void netfs_rreq_unmark_after_write(struct netfs_read_request *rreq)
> +static void netfs_rreq_unmark_after_write(struct netfs_read_request *rreq,
> +                                         bool was_async)
>  {
>         struct netfs_read_subrequest *subreq;
>         struct pagevec pvec;
> @@ -258,10 +265,11 @@ static void netfs_rreq_unmark_after_write(struct netfs_read_request *rreq)
>         }
>
>         rcu_read_unlock();
> -       netfs_rreq_completed(rreq);
> +       netfs_rreq_completed(rreq, was_async);
>  }
>
> -static void netfs_rreq_copy_terminated(void *priv, ssize_t transferred_or_error)
> +static void netfs_rreq_copy_terminated(void *priv, ssize_t transferred_or_error,
> +                                      bool was_async)
>  {
>         struct netfs_read_subrequest *subreq = priv;
>         struct netfs_read_request *rreq = subreq->rreq;
> @@ -278,9 +286,9 @@ static void netfs_rreq_copy_terminated(void *priv, ssize_t transferred_or_error)
>
>         /* If we decrement nr_wr_ops to 0, the ref belongs to us. */
>         if (atomic_dec_and_test(&rreq->nr_wr_ops))
> -               netfs_rreq_unmark_after_write(rreq);
> +               netfs_rreq_unmark_after_write(rreq, was_async);
>
> -       netfs_put_subrequest(subreq);
> +       netfs_put_subrequest(subreq, was_async);
>  }
>
>  /*
> @@ -304,7 +312,7 @@ static void netfs_rreq_do_write_to_cache(struct netfs_read_request *rreq)
>         list_for_each_entry_safe(subreq, p, &rreq->subrequests, rreq_link) {
>                 if (!test_bit(NETFS_SREQ_WRITE_TO_CACHE, &subreq->flags)) {
>                         list_del_init(&subreq->rreq_link);
> -                       netfs_put_subrequest(subreq);
> +                       netfs_put_subrequest(subreq, false);
>                 }
>         }
>
> @@ -324,7 +332,7 @@ static void netfs_rreq_do_write_to_cache(struct netfs_read_request *rreq)
>                         subreq->len += next->len;
>                         subreq->len = round_up(subreq->len, PAGE_SIZE);
>                         list_del_init(&next->rreq_link);
> -                       netfs_put_subrequest(next);
> +                       netfs_put_subrequest(next, false);
>                 }
>
>                 iov_iter_xarray(&iter, WRITE, &rreq->mapping->i_pages,
> @@ -340,7 +348,7 @@ static void netfs_rreq_do_write_to_cache(struct netfs_read_request *rreq)
>
>         /* If we decrement nr_wr_ops to 0, the usage ref belongs to us. */
>         if (atomic_dec_and_test(&rreq->nr_wr_ops))
> -               netfs_rreq_unmark_after_write(rreq);
> +               netfs_rreq_unmark_after_write(rreq, false);
>  }
>
>  static void netfs_rreq_write_to_cache_work(struct work_struct *work)
> @@ -351,9 +359,10 @@ static void netfs_rreq_write_to_cache_work(struct work_struct *work)
>         netfs_rreq_do_write_to_cache(rreq);
>  }
>
> -static void netfs_rreq_write_to_cache(struct netfs_read_request *rreq)
> +static void netfs_rreq_write_to_cache(struct netfs_read_request *rreq,
> +                                     bool was_async)
>  {
> -       if (in_softirq()) {
> +       if (was_async) {
>                 rreq->work.func = netfs_rreq_write_to_cache_work;
>                 if (!queue_work(system_unbound_wq, &rreq->work))
>                         BUG();
> @@ -479,7 +488,7 @@ static bool netfs_rreq_perform_resubmissions(struct netfs_read_request *rreq)
>  {
>         struct netfs_read_subrequest *subreq;
>
> -       WARN_ON(in_softirq());
> +       WARN_ON(in_interrupt());
>
>         trace_netfs_rreq(rreq, netfs_rreq_trace_resubmit);
>
> @@ -538,7 +547,7 @@ static void netfs_rreq_is_still_valid(struct netfs_read_request *rreq)
>   * Note that we could be in an ordinary kernel thread, on a workqueue or in
>   * softirq context at this point.  We inherit a ref from the caller.
>   */
> -static void netfs_rreq_assess(struct netfs_read_request *rreq)
> +static void netfs_rreq_assess(struct netfs_read_request *rreq, bool was_async)
>  {
>         trace_netfs_rreq(rreq, netfs_rreq_trace_assess);
>
> @@ -558,30 +567,31 @@ static void netfs_rreq_assess(struct netfs_read_request *rreq)
>         wake_up_bit(&rreq->flags, NETFS_RREQ_IN_PROGRESS);
>
>         if (test_bit(NETFS_RREQ_WRITE_TO_CACHE, &rreq->flags))
> -               return netfs_rreq_write_to_cache(rreq);
> +               return netfs_rreq_write_to_cache(rreq, was_async);
>
> -       netfs_rreq_completed(rreq);
> +       netfs_rreq_completed(rreq, was_async);
>  }
>
>  static void netfs_rreq_work(struct work_struct *work)
>  {
>         struct netfs_read_request *rreq =
>                 container_of(work, struct netfs_read_request, work);
> -       netfs_rreq_assess(rreq);
> +       netfs_rreq_assess(rreq, false);
>  }
>
>  /*
>   * Handle the completion of all outstanding I/O operations on a read request.
>   * We inherit a ref from the caller.
>   */
> -static void netfs_rreq_terminated(struct netfs_read_request *rreq)
> +static void netfs_rreq_terminated(struct netfs_read_request *rreq,
> +                                 bool was_async)
>  {
>         if (test_bit(NETFS_RREQ_INCOMPLETE_IO, &rreq->flags) &&
> -           in_softirq()) {
> +           was_async) {
>                 if (!queue_work(system_unbound_wq, &rreq->work))
>                         BUG();
>         } else {
> -               netfs_rreq_assess(rreq);
> +               netfs_rreq_assess(rreq, was_async);
>         }
>  }
>
> @@ -589,6 +599,7 @@ static void netfs_rreq_terminated(struct netfs_read_request *rreq)
>   * netfs_subreq_terminated - Note the termination of an I/O operation.
>   * @subreq: The I/O request that has terminated.
>   * @transferred_or_error: The amount of data transferred or an error code.
> + * @was_async: The termination was asynchronous
>   *
>   * This tells the read helper that a contributory I/O operation has terminated,
>   * one way or another, and that it should integrate the results.
> @@ -599,11 +610,12 @@ static void netfs_rreq_terminated(struct netfs_read_request *rreq)
>   * error code.  The helper will look after reissuing I/O operations as
>   * appropriate and writing downloaded data to the cache.
>   *
> - * This may be called from a softirq handler, so we want to avoid taking the
> - * spinlock if we can.
> + * If @was_async is true, the caller might be running in softirq or interrupt
> + * context and we can't sleep.
>   */
>  void netfs_subreq_terminated(struct netfs_read_subrequest *subreq,
> -                            ssize_t transferred_or_error)
> +                            ssize_t transferred_or_error,
> +                            bool was_async)
>  {
>         struct netfs_read_request *rreq = subreq->rreq;
>         int u;
> @@ -647,11 +659,11 @@ void netfs_subreq_terminated(struct netfs_read_subrequest *subreq,
>         /* If we decrement nr_rd_ops to 0, the ref belongs to us. */
>         u = atomic_dec_return(&rreq->nr_rd_ops);
>         if (u == 0)
> -               netfs_rreq_terminated(rreq);
> +               netfs_rreq_terminated(rreq, was_async);
>         else if (u == 1)
>                 wake_up_var(&rreq->nr_rd_ops);
>
> -       netfs_put_subrequest(subreq);
> +       netfs_put_subrequest(subreq, was_async);
>         return;
>
>  incomplete:
> @@ -796,7 +808,7 @@ static bool netfs_rreq_submit_slice(struct netfs_read_request *rreq,
>
>  subreq_failed:
>         rreq->error = subreq->error;
> -       netfs_put_subrequest(subreq);
> +       netfs_put_subrequest(subreq, false);
>         return false;
>  }
>
> @@ -901,7 +913,7 @@ void netfs_readahead(struct readahead_control *ractl,
>         } while (rreq->submitted < rreq->len);
>
>         if (rreq->submitted == 0) {
> -               netfs_put_read_request(rreq);
> +               netfs_put_read_request(rreq, false);
>                 return;
>         }
>
> @@ -913,11 +925,11 @@ void netfs_readahead(struct readahead_control *ractl,
>
>         /* If we decrement nr_rd_ops to 0, the ref belongs to us. */
>         if (atomic_dec_and_test(&rreq->nr_rd_ops))
> -               netfs_rreq_assess(rreq);
> +               netfs_rreq_assess(rreq, false);
>         return;
>
>  cleanup_free:
> -       netfs_put_read_request(rreq);
> +       netfs_put_read_request(rreq, false);
>         return;
>  cleanup:
>         if (netfs_priv)
> @@ -991,14 +1003,14 @@ int netfs_readpage(struct file *file,
>          */
>         do {
>                 wait_var_event(&rreq->nr_rd_ops, atomic_read(&rreq->nr_rd_ops) == 1);
> -               netfs_rreq_assess(rreq);
> +               netfs_rreq_assess(rreq, false);
>         } while (test_bit(NETFS_RREQ_IN_PROGRESS, &rreq->flags));
>
>         ret = rreq->error;
>         if (ret == 0 && rreq->submitted < rreq->len)
>                 ret = -EIO;
>  out:
> -       netfs_put_read_request(rreq);
> +       netfs_put_read_request(rreq, false);
>         return ret;
>  }
>  EXPORT_SYMBOL(netfs_readpage);
> @@ -1136,7 +1148,7 @@ int netfs_write_begin(struct file *file, struct address_space *mapping,
>          */
>         for (;;) {
>                 wait_var_event(&rreq->nr_rd_ops, atomic_read(&rreq->nr_rd_ops) == 1);
> -               netfs_rreq_assess(rreq);
> +               netfs_rreq_assess(rreq, false);
>                 if (!test_bit(NETFS_RREQ_IN_PROGRESS, &rreq->flags))
>                         break;
>                 cond_resched();
> @@ -1145,7 +1157,7 @@ int netfs_write_begin(struct file *file, struct address_space *mapping,
>         ret = rreq->error;
>         if (ret == 0 && rreq->submitted < rreq->len)
>                 ret = -EIO;
> -       netfs_put_read_request(rreq);
> +       netfs_put_read_request(rreq, false);
>         if (ret < 0)
>                 goto error;
>
> diff --git a/include/linux/netfs.h b/include/linux/netfs.h
> index b2589b39feb8..c22b64db237d 100644
> --- a/include/linux/netfs.h
> +++ b/include/linux/netfs.h
> @@ -60,7 +60,8 @@ enum netfs_read_source {
>         NETFS_INVALID_READ,
>  } __mode(byte);
>
> -typedef void (*netfs_io_terminated_t)(void *priv, ssize_t transferred_or_error);
> +typedef void (*netfs_io_terminated_t)(void *priv, ssize_t transferred_or_error,
> +                                     bool was_async);
>
>  /*
>   * Resources required to do operations on a cache.
> @@ -189,7 +190,7 @@ extern int netfs_write_begin(struct file *, struct address_space *,
>                              const struct netfs_read_request_ops *,
>                              void *);
>
> -extern void netfs_subreq_terminated(struct netfs_read_subrequest *, ssize_t);
> +extern void netfs_subreq_terminated(struct netfs_read_subrequest *, ssize_t, bool);
>  extern void netfs_stats_show(struct seq_file *);
>
>  #endif /* _LINUX_NETFS_H */
>
>

Looks good in testing.

Tested-by: Marc Dionne <marc.dionne@auristor.com>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
