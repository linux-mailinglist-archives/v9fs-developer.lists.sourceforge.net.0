Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D5D769C3EF
	for <lists+v9fs-developer@lfdr.de>; Mon, 20 Feb 2023 02:14:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pTuko-00024b-Kl;
	Mon, 20 Feb 2023 01:14:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@gmail.com>) id 1pTukn-00024V-3S
 for v9fs-developer@lists.sourceforge.net;
 Mon, 20 Feb 2023 01:14:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iRjv1bkYnEq8PdAJDpgJuFsrB4ud3uS5wRCFbiT5iD8=; b=UWFxH4cMIEdH3yI6Job8lCJw/d
 gszuBtmPwI1xdEIXzpcm6C0v3VYjj8/FjVDe7QGxyXa6AE9YGTFBaCRKbFI6MIcZwMy+yYzgDnJeW
 et6eKCmAFcsXmaVoHGwkLxLfLJsAzdF7XoncyXu0vtHj5/MTGFJPZ+qgDh+I9KxN7FCg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=iRjv1bkYnEq8PdAJDpgJuFsrB4ud3uS5wRCFbiT5iD8=; b=KEAdrJQrqO/sV/IY5OeIeY4KAB
 FdAXvBjrLyuMuAYq0gTVZZ98oeHTlof1Sx+MgJP0jszzygzPXs9B9eVhUiRHivPwgsAP9z7fCTLtw
 ev7Q27rLXs6igZhmY2AQ7BtNWTFwkeoUJ8XMeLWyfEem5l03QE1TPuSJxyY5grOJHXbs=;
Received: from mail-wm1-f54.google.com ([209.85.128.54])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pTukj-0003xT-Py for v9fs-developer@lists.sourceforge.net;
 Mon, 20 Feb 2023 01:14:03 +0000
Received: by mail-wm1-f54.google.com with SMTP id
 l2-20020a05600c1d0200b003e1f6dff952so1146113wms.1
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 19 Feb 2023 17:14:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=iRjv1bkYnEq8PdAJDpgJuFsrB4ud3uS5wRCFbiT5iD8=;
 b=cbH9mFQVTrOC29/GbdlJXo/AQr3SGruqH+xwp8DHSxYxAz3tN79PqJuYyI+UtsREXD
 cvlBFZ1ho44MO8U49jts4d8NWl1oZA9s1+0FrESgzdfV8x+U9Q+28QB5Qh1O52m8N7cY
 I0LoAIFaPwVvi1q/6remuBVdBJvAzziJgQ5JVb+R171JRET9dCL0iEtjMD4xIA9IKCjS
 z/st64UO0oaicE7LUAgEirwwKd8UxB36ss18C2QyLD2voU4fWoDK91GBeUABVYYEPO91
 luSP2a5bTzPGuwjemYXLy7rZbwJG86/eoervPJ8Dl5ayS0FF/cGUTphN/zcCd+VSTIiz
 ZmVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=iRjv1bkYnEq8PdAJDpgJuFsrB4ud3uS5wRCFbiT5iD8=;
 b=rvNTE2xsu/h1QiFqrl4EGuq0WjPcqiQpFyVomE+jK4XDfRob9Q6cfFnexMFOgM2/ky
 Ng9ps3VdkFL83iqj9PuoamVGek6swPFy8ri/jDsIkC4NTtR1URGa0o2WXvAiQeTvBvR5
 OKs8xNB7UyYHLB5irCLLoM2x24XWbzDH/t/jnPJoNcPOWomkhnM9b+zhv9s7cBeAbEdR
 Cwu6LjnppfSkCd0AJiJTuSQDhYJvDuYlMJ8pyLZYMNmE3qqgVSB9A4o23DPEKUq24von
 R1U2lrEQoWbL+SRDJcLXQbTs1ewJUtK70ya5T/9vUTd+f965P5PgDxzDIAOyE5SGxtr2
 Y+jw==
X-Gm-Message-State: AO0yUKVnh+SkEVUdRpN+DljI61JATvTE1+ovMzvXjNnpRIE+0ZvyIsfd
 WQc3LAl9BS3fda4/LWP1sBBfGYxSvQviPZX/ZFE=
X-Google-Smtp-Source: AK7set8s8+1kI9zVellxX/6p45rLGP4ylbKicP82dQHfUGRat1Q2jsKPYKoMYBxEyYeKNXe5MA26vTZ/QGeNekjfiQo=
X-Received: by 2002:a05:600c:198e:b0:3d9:fd0c:e576 with SMTP id
 t14-20020a05600c198e00b003d9fd0ce576mr386614wmq.6.1676855635571; Sun, 19 Feb
 2023 17:13:55 -0800 (PST)
MIME-Version: 1.0
References: <20230124023834.106339-1-ericvh@kernel.org>
 <20230218003323.2322580-1-ericvh@kernel.org>
 <12241224.W6qpu7VSM5@silver>
In-Reply-To: <12241224.W6qpu7VSM5@silver>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Sun, 19 Feb 2023 19:13:44 -0600
Message-ID: <CAFkjPTmeAV2Qz95tY9OQOryZQoKKkDEorkaFMLQYPaJgog-1Kw@mail.gmail.com>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Glad to hear bugs disappeared. writeback having a different
 performance than mmap is confusing as they should be equivalent. The huge
 blocksize on your dd is an interesting choice -- it will completely get rid
 of any impact of readahead. To see impact of readahead, choose a blocksize
 of less than msize (like 4k) to actually [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ericvh[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.54 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.54 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pTukj-0003xT-Py
Subject: Re: [V9fs-developer] [PATCH v4 00/11] Performance fixes for 9p
 filesystem
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
Cc: lucho@ionkov.net, linux-kernel@vger.kernel.org, rminnich@gmail.com,
 linux-fsdevel@vger.kernel.org, v9fs-developer@lists.sourceforge.net,
 Eric Van Hensbergen <ericvh@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Glad to hear bugs disappeared.  writeback having a different
performance than mmap is confusing as they should be equivalent.

The huge blocksize on your dd is an interesting choice -- it will
completely get rid of any impact of readahead.  To see impact of
readahead, choose a blocksize of
less than msize (like 4k) to actually see the perf of readahead.  The
mmap degradation is likely due to stricter coherence (open-to-close
consistency means we wait on writeout), but I'd probably need to go in
and trace to verify (which probably isn't a bad idea overall).
probably a similar situation for loose and writeback.  Essentially,
before close consistency it didn't have to wait for the final write to
complete before it returns so you see a faster time (even though data
wasn't actually written all the way through so you aren't measuring
the last little bit of the write (which can be quite large of a big
msize).

I'm going to take a pass through tomorrow making some fixups that
Dominiquee suggested and trying to reproduce/fix the fscache problems.

      -eric

On Sun, Feb 19, 2023 at 3:36 PM Christian Schoenebeck
<linux_oss@crudebyte.com> wrote:
>
> On Saturday, February 18, 2023 1:33:12 AM CET Eric Van Hensbergen wrote:
> > This is the fourth version of a patch series which adds a number
> > of features to improve read/write performance in the 9p filesystem.
> > Mostly it focuses on fixing caching to help utilize the recently
> > increased MSIZE limits and also fixes some problematic behavior
> > within the writeback code.
> >
> > All together, these show roughly 10x speed increases on simple
> > file transfers over no caching for readahead mode.  Future patch
> > sets will improve cache consistency and directory caching, which
> > should benefit loose mode.
> >
> > This iteration of the patch incorporates an important fix for
> > writeback which uses a stronger mechanism to flush writeback on
> > close of files and addresses observed bugs in previous versions of
> > the patch for writeback, mmap, and loose cache modes.
> >
> > These patches are also available on github:
> > https://github.com/v9fs/linux/tree/ericvh/for-next
> > and on kernel.org:
> > https://git.kernel.org/pub/scm/linux/kernel/git/ericvh/v9fs.git
> >
> > Tested against qemu, cpu, and diod with fsx, dbench, and postmark
> > in every caching mode.
> >
> > I'm gonna definitely submit the first couple patches as they are
> > fairly harmless - but would like to submit the whole series to the
> > upcoming merge window.  Would appreciate reviews.
>
> I tested this version thoroughly today (msize=512k in all tests). Good news
> first: the previous problems of v3 are gone. Great! But I'm still trying to
> make sense of the performance numbers I get with these patches.
>
> So when doing some compilations with 9p, performance of mmap, writeback and
> readahead are basically all the same, and only loose being 6x faster than the
> other cache modes. Expected performance results? No errors at least. Good!
>
> Then I tested simple linear file I/O. First linear writing a 12GB file
> (time dd if=/dev/zero of=test.data bs=1G count=12):
>
> writeback    3m10s [this series - v4]
> readahead    0m11s [this series - v4]
> mmap         0m11s [this series - v4]
> mmap         0m11s [master]
> loose        2m50s [this series - v4]
> loose        2m19s [master]
>
> That's a bit surprising. Why is loose and writeback slower?
>
> Next linear reading a 12GB file
> (time cat test.data > /dev/null):
>
> writeback    0m24s [this series - v4]
> readahead    0m25s [this series - v4]
> mmap         0m25s [this series - v4]
> mmap         0m9s  [master]
> loose        0m24s [this series - v4]
> loose        0m24s [master]
>
> mmap degredation sticks out here, and no improvement with the other modes?
>
> I always performed a guest reboot between each run BTW.
>
>
>


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
