Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D1A868C909
	for <lists+v9fs-developer@lfdr.de>; Mon,  6 Feb 2023 22:57:15 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pP9UA-0003Sj-S3;
	Mon, 06 Feb 2023 21:57:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <axboe@kernel.dk>) id 1pP9U8-0003SX-Ic
 for v9fs-developer@lists.sourceforge.net;
 Mon, 06 Feb 2023 21:57:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:From:References:Cc:To:Subject:
 MIME-Version:Date:Message-ID:Content-Type:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bm9AeXfepBxuveRYGKVwADt8tMjUN7ePVu2JnTDBN1c=; b=JE1RmiBbfKhVZt1KTa+Tq6aY7Z
 yZSSmtddCB6Quxfj0dgh+9k29R76Dt6ALvxVn0iK4oBwUjNtonSbzGFQlEAqE06Ov2HAmaBeCApQ1
 AYonX6Pj69dFf2p4kifapziPwbHJhGePqobIIkJfq4BW7heJoJwiDZfhA4KGR1GPael0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
 Content-Type:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bm9AeXfepBxuveRYGKVwADt8tMjUN7ePVu2JnTDBN1c=; b=Vb8QpygHGYRId3KyRxEf5t1bsv
 3AxZCxcl1CGWw5O6vq8Le8FnH5+2n5StIUcemPzhf8I16LGCILrw0iyoTv6KMz06IqOFvDi3hMHhY
 hWM5+k6VR/LD2orK1mLE0nHrivjn9rvmiUEN6o59wgyZoovuXCV2VdqiSQu9CMmlCl/Q=;
Received: from mail-il1-f169.google.com ([209.85.166.169])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pP9U2-0005MI-2y for v9fs-developer@lists.sourceforge.net;
 Mon, 06 Feb 2023 21:57:11 +0000
Received: by mail-il1-f169.google.com with SMTP id z2so5296526ilq.2
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 06 Feb 2023 13:57:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20210112.gappssmtp.com; s=20210112;
 h=in-reply-to:from:references:cc:to:content-language:subject
 :user-agent:mime-version:date:message-id:from:to:cc:subject:date
 :message-id:reply-to;
 bh=bm9AeXfepBxuveRYGKVwADt8tMjUN7ePVu2JnTDBN1c=;
 b=4VFaa2PtjHs2cDTaTu6Jzgsoqi1bDAZT91NodHr5A5V3dVLhY+MALqXw5kk0XWK7UT
 dYFJ0m+i40lk445vDHGayjd0XqEcs3HUmhm02O+kVx33eYECedDHyr5SdUHc1n3QcehE
 SWR3XMBho7t5d45U1jWWKZoeDG4+53oDrqBGZjCAYiKhGGWs61ZTzimq2lMPYseyNb0G
 6EzPCPmRtGAlDyeXsOTapQOPWECnDQZe5adHOcMOjLHE2YYyZBBy0hqo19A+WEWHzG/6
 i02o2sDW4vrSakten4YJhHvcgNnlGrcVUB825g0/wpOlEPOzEfKTCo5Roiu2Bs61J8Fy
 iZAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:from:references:cc:to:content-language:subject
 :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=bm9AeXfepBxuveRYGKVwADt8tMjUN7ePVu2JnTDBN1c=;
 b=vZrQbXSdjZ32b9XTWue5BFhC3qTW/m9BfEBUVmVvcwJgE+l9jL6tRTqRUzNbbqzCXO
 oIyvoZ7SPnNn/Zskpdh6AJF8z0wk9Hh8KleNUCuaRTuKdCyo50suhO+Kxoyb/BUXtzu4
 NvYXEWl1bak5SgguIIVFc4/L1FIfd89TcOcY2Qu9w1oLYLzHzC0QCtu1G+onVrbgyMA4
 DWNQIW2QbhJBSe8YXUtx6+/0DH+pPBHke4kvSG8LNOnrTshc0d1vATrsMggwuQPxRKLw
 BPnKFGAoVnbK4+nNECPdv5Bi8UFwjE4mA3+wLzouWZ3S95esi9dJUqQHrVpifZDxW5SR
 NLdg==
X-Gm-Message-State: AO0yUKVAD3A42xCZABNob2SjtC/sCQ+K5UwXS/0/b5Ty9kMHMwjivIA3
 YCxCAe0o1ucHhe//KbnFzSc/Dw==
X-Google-Smtp-Source: AK7set8zuPpkdC7st0oGjsqQ2wtOTyy5UfnftbM67+gKYYwS6GrwvhVlRt1eKAfjXXlag3GmV6TeIA==
X-Received: by 2002:a92:d24d:0:b0:313:904d:abcd with SMTP id
 v13-20020a92d24d000000b00313904dabcdmr561584ilg.3.1675720620317; 
 Mon, 06 Feb 2023 13:57:00 -0800 (PST)
Received: from [192.168.1.94] ([96.43.243.2]) by smtp.gmail.com with ESMTPSA id
 n20-20020a056638121400b003acde48bdc3sm3738659jas.111.2023.02.06.13.56.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Feb 2023 13:56:59 -0800 (PST)
Message-ID: <00a0809e-7b47-c43c-3a13-a84cd692f514@kernel.dk>
Date: Mon, 6 Feb 2023 14:56:57 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Dominique Martinet <asmadeus@codewreck.org>
References: <9422b998-5bab-85cc-5416-3bb5cf6dd853@kernel.dk>
 <Y99+yzngN/8tJKUq@codewreck.org>
 <ad133b58-9bc1-4da9-73a2-957512e3e162@kernel.dk>
 <Y+F0KrAmOuoJcVt/@codewreck.org>
From: Jens Axboe <axboe@kernel.dk>
In-Reply-To: <Y+F0KrAmOuoJcVt/@codewreck.org>
X-Spam-Score: -2.0 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2/6/23 2:42?PM, Dominique Martinet wrote: > Jens Axboe
 wrote on Mon, Feb 06,
 2023 at 01:19:24PM -0700: >>> I agree with your assessment
 that we can't use task_work_run(), I assume >>> it's also qui [...] 
 Content analysis details:   (-2.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.169 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.169 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1pP9U2-0005MI-2y
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: Re: [V9fs-developer] [PATCH v2] 9p/client: don't assume
 signal_pending() clears on recalc_sigpending()
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
Cc: netdev <netdev@vger.kernel.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>,
 Pengfei Xu <pengfei.xu@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 v9fs-developer@lists.sourceforge.net, Eric Van Hensbergen <ericvh@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On 2/6/23 2:42?PM, Dominique Martinet wrote:
> Jens Axboe wrote on Mon, Feb 06, 2023 at 01:19:24PM -0700:
>>> I agree with your assessment that we can't use task_work_run(), I assume
>>> it's also quite bad to just clear the flag?
>>> I'm not familiar with these task at all, in which case do they happen?
>>> Would you be able to share an easy reproducer so that I/someone can try
>>> on various transports?
>>
>> You can't just clear the flag without also running the task_work. Hence
>> it either needs to be done right there, or leave it pending and let the
>> exit to userspace take care of it.
> 
> Sorry I didn't develop that idea; the signal path resets the pending
> signal when we're done, I assumed we could also reset the TWA_SIGNAL
> flag when we're done flushing. That might take a while though, so it's
> far from optimal.

Sure, if you set it again when done, then it will probably work just
fine. But you need to treat TIF_NOTIFY_SIGNAL and TIF_SIGPENDING
separately. An attempt at that at the end of this email, totally
untested, and I'm not certain it's a good idea at all (see below). Is
there a reason why we can't exit and get the task_work processed
instead? That'd be greatly preferable.

>>> If it's "rare enough" I'd say sacrificing the connection might make more
>>> sense than a busy loop, but if it's becoming common I think we'll need
>>> to spend some more time thinking about it...
>>> It might be less effort to dig out my async flush commits if this become
>>> too complicated, but I wish I could say I have time for it...
>>
>> It can be a number of different things - eg fput() will do it.
> 
> Hm, schedule_delayed_work on the last fput, ok.
> I was wondering what it had to do with the current 9p thread, but since
> it's not scheduled on a particular cpu it can pick another cpu to wake
> up, that makes sense -- although conceptually it feels rather bad to
> interrupt a remote IO because of a local task that can be done later;
> e.g. between having the fput wait a bit, or cancel a slow operation like
> a 1MB write, I'd rather make the fput wait.
> Do you know why that signal/interrupt is needed in the first place?

It's needed if the task is currently sleeping in the kernel, to abort a
sleeping loop. The task_work may contain actions that will result in the
sleep loop being satisfied and hence ending, which means it needs to be
processed. That's my worry with the check-and-clear, then reset state
solution.

>> The particular case that I came across was io_uring, which will use
>> TWA_SIGNAL based task_work for retry operations (and other things). If
>> you use io_uring, and depending on how you setup the ring, it can be
>> quite common or will never happen. Dropping the connection task_work
>> being pending is not a viable solution, I'm afraid.
> 
> Thanks for confirming that it's perfectly normal, let's not drop
> connections :)
> 
> My preferred approach is still to try and restore the async flush code,
> but that will take a while -- it's not something that'll work right away
> and I want some tests so it won't be ready for this merge window.
> If we can have some sort of workaround until then it'll probably be for
> the best, but I don't have any other idea (than temporarily clearing the
> flag) at this point.
> 
> I'll setup some uring IO on 9p and see if I can produce these.

I'm attaching a test case. I don't think it's particularly useful, but
it does nicely demonstrate the infinite loop that 9p gets into if
there's task_work pending.

-- 
Jens Axboe

_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
