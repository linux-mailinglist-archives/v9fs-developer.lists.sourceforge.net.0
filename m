Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 588FA4C8FE8
	for <lists+v9fs-developer@lfdr.de>; Tue,  1 Mar 2022 17:15:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nP59K-0001Q7-KY; Tue, 01 Mar 2022 16:14:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <rminnich@gmail.com>) id 1nP59J-0001Q1-Ps
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Mar 2022 16:14:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rgUWo6qCQTWl9+c7j6+IwK9PWSV0qP5CQ0NV6esy11Q=; b=PxYuqabzRVy2+lNzuL8wKOiArj
 7lbCbbbX72nB3oY6Eg6PIV7NnQf44smFm8ZDM2Hqlb1zYEErzseVV1JptZoIMLGy5gbw9NlJILNba
 /3EYyOWwLw1haZIAmHhNzSocdswDa37cM0yatYzYdRUpgZhpzojrXYexyqIsnpnaChuM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rgUWo6qCQTWl9+c7j6+IwK9PWSV0qP5CQ0NV6esy11Q=; b=Myz1fJV+gZ6U0pltJX/vV5XcaB
 shIi1O3qLvv51wJ7AIf0dJG7ryRiG6yH6aKxTOq/1QSh44BLxJehDqCWYnMjjGs3IychUMtzIQ63G
 llBpwQcbrMhBYk90cgWS5+u1geul7jqUapQP5HUviLWrN7QhzdDLtVDAwlFt/mkDJdJ8=;
Received: from mail-oo1-f44.google.com ([209.85.161.44])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nP59G-001SFu-PO
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Mar 2022 16:14:52 +0000
Received: by mail-oo1-f44.google.com with SMTP id
 n5-20020a4a9545000000b0031d45a442feso15363006ooi.3
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 01 Mar 2022 08:14:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=rgUWo6qCQTWl9+c7j6+IwK9PWSV0qP5CQ0NV6esy11Q=;
 b=qmap5wsUp9XkdddxV5Q5BqjXqnYpzvJuajUzilllf3Mb6WjSM/FR52QBPDnXu2mHJq
 9IKsa5drKUDgVGtr4T7bzOojOvWT2f9L2xXqJEonPoFTkbzgV0Q9YzbT29HPf9Qr7y2X
 7j5J/d/HZZMN22R8FvUCxjIyB0Us89Z1Yvw3JX1PZC1lK04j7qN+oghbMrmUYmVf7EGe
 ccAC6zP+7/amJ06ipU5UK4Va0R7Ork2GGZq0FLizXvOIdrU6JuU6A62qU98X4E3tDDE0
 qOJnRuAI2nP/KVdxZkbUdRsWQTi+1p7QoZPu6cruyNaIVvJFGLKjvl9M0VAIonye1Q5A
 RxnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=rgUWo6qCQTWl9+c7j6+IwK9PWSV0qP5CQ0NV6esy11Q=;
 b=8B5Gensl3aWk/6ZgdKJHjrYlwwRvDX4ihxG/cBlxJszj2jRCkw7uMY9IFssAO1Gua6
 A2z5hmSlRVwH9Sb3QzMGAykjlTjBke5dgHMNk9LVfUaj8Nr1KAVrjr8PxCU3czqLO17M
 GbpZzLTl5sPAdo2K0zi7wAj8DJxwXSLgt44EdWkrTMKlnDvf96Eh5kwiZmUVgPZoVKNj
 Y3ZRvJBhxun8i+gVtQ8r9s2tdY3j7SkfZyBjjxhaU+cjH4UjYO9Y/JW1QoBmD3y0dWT2
 gfyFrBIGjZenL1wUPP45KAq20s6vGTnoJuKl075tE1YZVzOcjsVCE7fiW9/wD7Hx2D6y
 Hb2w==
X-Gm-Message-State: AOAM531zrjqF4Nj/8FLWHHotv72QBOU6FhYAm9S+OYcR5K+HITzw3SBt
 TjymX1b5Kd9ZY72m2Ajb/gdSaOPVoIptAxdbyyQ=
X-Google-Smtp-Source: ABdhPJyRubRVcw9ZDG5RVoKgHOyXiIcRPxS0LVlYw5D31znCS8bC8DSvJf7XMftmnThn6uZ75HIG1jPwbJfkGST+6Ng=
X-Received: by 2002:a05:6870:1481:b0:d7:30a3:1f39 with SMTP id
 k1-20020a056870148100b000d730a31f39mr5721762oab.14.1646151284876; Tue, 01 Mar
 2022 08:14:44 -0800 (PST)
MIME-Version: 1.0
References: <621bfbc1.1c69fb81.434f2.b439SMTPIN_ADDED_MISSING@mx.google.com>
 <CAP6exYJ-Mx+bDCYWYPcOmqjXHQgmecTkZQ3PT=iQXFO0ZBVdMA@mail.gmail.com>
 <CAFkjPTnVJzc215ZX6WnwnYYuxyOq1aH2-8sgpYyQOJgZbAJM8A@mail.gmail.com>
In-Reply-To: <CAFkjPTnVJzc215ZX6WnwnYYuxyOq1aH2-8sgpYyQOJgZbAJM8A@mail.gmail.com>
From: ron minnich <rminnich@gmail.com>
Date: Tue, 1 Mar 2022 08:14:33 -0800
Message-ID: <CAP6exYJZMCyqdouDY5DGOPViy1GW=qfGKY5nM247H3FE38n3Xw@mail.gmail.com>
To: Eric Van Hensbergen <ericvh@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Eric, all this stuff can be measured, which I've done, and
 in the presence of several different active FIDs, at least when I did it,
 msize was not nearly as effective as asynchrony for smaller packets [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.44 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.44 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rminnich[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1nP59G-001SFu-PO
Subject: Re: [V9fs-developer] Make 9p fast
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
Cc: Latchesar Ionkov <lucho@ionkov.net>,
 V9FS Developers <v9fs-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Eric, all this stuff can be measured, which I've done, and in the
presence of several different active FIDs, at least when I did it,
msize was not nearly as effective as asynchrony for smaller packets.
This kind of makes sense: most files are small. Further, per my
earlier note, write performance of things like gld is dramatically
improved when the client buffers and groups a lot of small writes into
smaller big writes -- it does not take a big msize either: if you
convert, e.g., 1000 3 byte writes into 1 3000-byte write, the
improvement is pretty dramatic (measured in 1998). This argues for the
caching improvements this community has made. I will try those with my
cpu command.

but all this can be measured. I don't really object to a big msize,
it's just that it's not the panacea we all (me too!) used to think it
was. TBH, florens' streaming 9p was by far the best improvement we
ever had for large delay networks -- but we've never figured out a way
to cleanly integrate that.

I'll try to get some measurements. I need cpu to be fast on LInux, and
I want to stop hearing this "9p is inherently slow" bogosity I keep
running across :-)

thanks

On Tue, Mar 1, 2022 at 5:24 AM Eric Van Hensbergen <ericvh@gmail.com> wrote:
>>
>> The first thing everyone does to try to fix 9p slowness is "grow the
>> MSIZE." This can help, but it can hurt.
>
>
>> It can help, in that, basically, for an msize like even 8K, you can
>> read the entire file in one go.
>
>
>> It can hurt, in that, for really big files, with a big delay-bandwidth
>> product, you're going to get head-of-line blocking:
>> each Tread will wait on that "really big Tread" before it to finish,
>> so your time between Treads will be LARGER.
>
>
> I was thinking about this a bit more and had the (duh) realization that they aren't optimizing for wire, they are optimizing for shared memory.  When principal use case is VM/Container file system pass through the main thing you end up optimizing for is number of transitions which ~= number of packets -- so you want as big of a potential msize as you can possibly get because then if they can use it they get the most optimal whereas if they don't need it they don't need to use the entire size.  There does end up probably being a tradeoff w.r.t. buffer sizes but not sure that shows up with virtio zero copy.  I suppose you might still get head of line blocking due to large transaction sizes on underlying storage -- but that could be mitigated with more asynchrony on the server side.
>
> Now, thinking about this in the context of what we are proposing for the client end -- merely doing async and read-ahead isn't going to get us the same bang for the buck as its going to increase message size and then hypothetically the number of virtio transactions/transitions -- what we'd need to take advantage of that is some form of grouping of transactions before sending across the wire to minimize the transitions and for a bunch of reads wouldn't that end up being similar to a large MSIZE?  However for other types of transitions you could imagine speculative operations (something like directory traversal or directory listing) where grouping might give you a bigger boost but not sure I see a clear path to how you would do that -- for dir lists you'd get something closer to what plan 9 already has, but we don't currently cache the stat information IIRC, so we'd need to figure out how to do that so subsequent stats would use the (potentially slightly stale) cache versus reissuing a stat.  So -- not sure grouping is the way to go, aggressive caching and minimizing total operations seem to be the best for the VM space -- different optimizations might make more sense for true networking.
>
>           -eric
>
>
> On Mon, Feb 28, 2022 at 12:31 PM ron minnich <rminnich@gmail.com> wrote:
>>
>> On Sun, Feb 27, 2022 at 2:31 PM <ng@0x80.stream> wrote:
>>
>> > Forgive the naive question, but would this change entail that a
>> > client may not observe its own writes? (Because the client may send
>> > Twrite and Tread but the Tread may be served first, I mean.) Isn't that
>> > undesirable? What do other file systems do?
>>
>> I have thought about this, and think we can resolve it on the client
>> side with some rules.
>>
>> Treads are considered to be independent of each other and idempotent (NFS rules)
>> - This will break for things like mice, sockets, etc. Do we care? Do
>> people on LInux use
>> 9p for streaming devices, Unix FIFOs, etc.? In my case, I do not.
>>
>> Twrites act like a fence for Treads, i.e., if there is a Twrite, it
>> blocks on pending reads, and
>> new reads block on the Twrite to finish.
>>
>> Tclunk acs like a fence for all pending IO. If there are Twrites, it
>> blocks on them, else
>> it blocks on pending reads.
>>
>>  Note that: this is all client logic. It is probably logic I will be
>> testing in Plan 9 in the next few months.
>>
>> A few other notes from a lot of years snooping Plan 9.
>>
>> The first thing everyone does to try to fix 9p slowness is "grow the
>> MSIZE." This can help, but it can hurt.
>>
>> It can help, in that, basically, for an msize like even 8K, you can
>> read the entire file in one go.
>>
>> It can hurt, in that, for really big files, with a big delay-bandwidth
>> product, you're going to get head-of-line blocking:
>> each Tread will wait on that "really big Tread" before it to finish,
>> so your time between Treads will be LARGER.
>>
>> The other issue with big MSIZE is that it also limits concurrency over
>> multiple FIDs, for the same reason: the connection
>> is not usable for blocks of time as it is moving 1M blocks for one FID.
>>
>>  Big block size is an obvious fix with subtle negative impacts.
>>
>> All this I've seen in the wild, on big machines.
>>
>> Anyway, I will try the caching stuff, sounds very interesting, and see
>> how it impacts my  cpu (github.com/u-root/cpu) command;
>> 9p performance is critical to that command.
>>
>> Thanks again for the work!
>>
>> ron


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
