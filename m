Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D670168CA82
	for <lists+v9fs-developer@lfdr.de>; Tue,  7 Feb 2023 00:26:05 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pPAs8-0005Af-Kf;
	Mon, 06 Feb 2023 23:26:03 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <axboe@kernel.dk>) id 1pPAs6-0005AN-2U
 for v9fs-developer@lists.sourceforge.net;
 Mon, 06 Feb 2023 23:26:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9t4NU594cNajFbcn/vwZWjR2ZQ3GUkpZaMLOeIVW+g8=; b=XguYma0q5MjtiOefV7OkZoqLIP
 Met/0vGPQywPKW3s2lHIfuUFUpbr/cy3CKdIn4bk6fQE/AMzPqM73kDTV8aQOkeAiNRlPvAG/JJuh
 4VaxhDk+W4XcB+GPjpcKUYMZilVMXPjA6uv2AMwO/jP4t0ykb35R0LuCng9skg6HKJ84=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=9t4NU594cNajFbcn/vwZWjR2ZQ3GUkpZaMLOeIVW+g8=; b=fXHrLjjl/Wty7Sc7iGiUEvysOv
 z1l54ck15XmS9SZ/z5uXWKtrkvVL1lBznBIf6iIFM2REU3kJrI/ESsUn+bwL1zc84mme/BZ/iFLGt
 5urb8mQxXyiu2MJuK03tGeXhFUVF4cJ1NWJbA9plqBr/an8ja9uXCA97jIPCi5d/l9Sg=;
Received: from mail-pl1-f179.google.com ([209.85.214.179])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pPArw-00Cybg-2a for v9fs-developer@lists.sourceforge.net;
 Mon, 06 Feb 2023 23:26:00 +0000
Received: by mail-pl1-f179.google.com with SMTP id be8so13868691plb.7
 for <v9fs-developer@lists.sourceforge.net>;
 Mon, 06 Feb 2023 15:25:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=9t4NU594cNajFbcn/vwZWjR2ZQ3GUkpZaMLOeIVW+g8=;
 b=XUQ0Nf7uWVrYXRo3U/RhLapG4L50FFy0SV9lMz38aXubWeIAwUjYI0FQstvGGlnSUH
 L7FEz2jb3mfi4pHgicuXWW4uoeocqTzsIIyf1Sl8oYhhCiNK9f64tfhC+ZdD5ZU1iJ1D
 1WDI1vVWX/Qa1rc21A3wIitU9On07p40b5ZR2qPEHjdeorfw8IFxWs2tPPY22rNmVC9l
 lqQnHX1dVCNy9oFozCi6O0jci3jizqm7VMDscCUu6jV+K0W/dWOLP0XkDd/FR2VlJaCh
 kI/KwWRaN3XReJeOsvwRQjy9nOw1RiV3ws9uLJUK+GDNV/aNt9adaQ+QKEz9rqk4B17e
 7eKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=9t4NU594cNajFbcn/vwZWjR2ZQ3GUkpZaMLOeIVW+g8=;
 b=lo6wc++CZM5dbIlWvSpR09kQuB8AZOPfd/IAwh83GkZHKh7ocUm7CqSoeVuAXzQRoY
 IzFPgUcoNyEP1JvVZWBPXQqw9nUzaExifm6V5d99VuLbTnllYBj87Tbkmw9/LgSAtUki
 3hTds5uaAwxTkTI+y1KIGL6/eMZ5mdeTxTB2vdgEheMdmnONxKhjvpN06zddIOaPWKqk
 ZlOYrvYS5U3QSmtyap0YkaMfqh7vVx0BpV4MM8PVrE7+BxdrCg3svMyqXGck6AEgmnaQ
 C57dsq7JLUAaoZLtHSxnR8PcQL0sL3k/SGyERw8t7wwU4FwoDV8FVWTgCUeupvbU5hNf
 rgJQ==
X-Gm-Message-State: AO0yUKWTsOcB+v5eze2+dGBrPqe93I1QDj/RJfFdzs6AX5XwKfDOlouV
 M5YU/afXLZTqYTQ73zz9phZcPlmTXWiYO8RC
X-Google-Smtp-Source: AK7set8lFLUIT5ufp8fOYPvR+ZqwS40zEqoP+gKFln+6rEIvvsaed17aXXBLUqT5dT1im3/x4tvihQ==
X-Received: by 2002:a62:8288:0:b0:582:d97d:debc with SMTP id
 w130-20020a628288000000b00582d97ddebcmr1107208pfd.3.1675724163392; 
 Mon, 06 Feb 2023 14:56:03 -0800 (PST)
Received: from [192.168.1.136] ([198.8.77.157])
 by smtp.gmail.com with ESMTPSA id
 j14-20020aa783ce000000b0059250c374cesm196239pfn.115.2023.02.06.14.56.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Feb 2023 14:56:02 -0800 (PST)
Message-ID: <68954e9a-00fc-8313-b76a-e1d336c84909@kernel.dk>
Date: Mon, 6 Feb 2023 15:56:01 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Content-Language: en-US
To: Dominique Martinet <asmadeus@codewreck.org>
References: <9422b998-5bab-85cc-5416-3bb5cf6dd853@kernel.dk>
 <Y99+yzngN/8tJKUq@codewreck.org>
 <ad133b58-9bc1-4da9-73a2-957512e3e162@kernel.dk>
 <Y+F0KrAmOuoJcVt/@codewreck.org>
 <00a0809e-7b47-c43c-3a13-a84cd692f514@kernel.dk>
 <Y+F/YSjhcQax1bMm@codewreck.org>
From: Jens Axboe <axboe@kernel.dk>
In-Reply-To: <Y+F/YSjhcQax1bMm@codewreck.org>
X-Spam-Score: 1.6 (+)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2/6/23 3:29?PM, Dominique Martinet wrote: >>> Hm,
 schedule_delayed_work
 on the last fput, ok. >>> I was wondering what it had to do with the current
 9p thread, but since >>> it's not scheduled on a [...] 
 Content analysis details:   (1.6 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [198.8.77.157 listed in zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.179 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.179 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1pPArw-00Cybg-2a
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

On 2/6/23 3:29?PM, Dominique Martinet wrote:
>>> Hm, schedule_delayed_work on the last fput, ok.
>>> I was wondering what it had to do with the current 9p thread, but since
>>> it's not scheduled on a particular cpu it can pick another cpu to wake
>>> up, that makes sense -- although conceptually it feels rather bad to
>>> interrupt a remote IO because of a local task that can be done later;
>>> e.g. between having the fput wait a bit, or cancel a slow operation like
>>> a 1MB write, I'd rather make the fput wait.
>>> Do you know why that signal/interrupt is needed in the first place?
>>
>> It's needed if the task is currently sleeping in the kernel, to abort a
>> sleeping loop. The task_work may contain actions that will result in the
>> sleep loop being satisfied and hence ending, which means it needs to be
>> processed. That's my worry with the check-and-clear, then reset state
>> solution.
> 
> I see, sleeping loop might not wake up until the signal is handled, but
> it won't handle it if we don't get out.

Exactly

> Not bailing out on sigkill is bad enough but that's possibly much worse
> indeed... And that also means the busy loop isn't any better, I was
> wondering how it was noticed if it was just a few busy checks but in
> that case just temporarily clearing the flag won't get out either,
> that's not even a workaround.
> 
> I assume that also explains why it wants that task, and cannot just run
> from the idle context-- it's not just any worker task, it's in the
> process context? (sorry for using you as a rubber duck...)

Right, it needs to run in the context of the right task. So we can't
just punt it out-of-line to something else, whihc would obviously also
solve that dependency loop.

>>> I'll setup some uring IO on 9p and see if I can produce these.
>>
>> I'm attaching a test case. I don't think it's particularly useful, but
>> it does nicely demonstrate the infinite loop that 9p gets into if
>> there's task_work pending.
> 
> Thanks, that helps!
> I might not have time until weekend but I'll definitely look at it.

Sounds good, thanks! I'll consider my patch abandoned and wait for what
you have.

-- 
Jens Axboe



_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
