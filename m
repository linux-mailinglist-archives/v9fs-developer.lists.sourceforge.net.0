Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9002D4C9045
	for <lists+v9fs-developer@lfdr.de>; Tue,  1 Mar 2022 17:27:34 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nP5La-00021E-2W; Tue, 01 Mar 2022 16:27:32 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <rminnich@gmail.com>) id 1nP5LY-000216-Da
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Mar 2022 16:27:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MlK3S55hR62oPfjKsGeC2By+Rc5xZuGo/E4BJEI3V7U=; b=Xn2YgXTChVlaTY+txubu8eq2jm
 fujw3m9ULikuiBGbyrwxo1AbGBJIGjmjOydGxaCH0Ucf6nXB7xhGLGv65AJnekq6vmHTX1tqZ7o8V
 gib/JD1d++JDRFVr1n/kopWb+vIEWkaMA1CJFn3SsVqA0YMsx3N3JQVP6WmwshHHLTY8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MlK3S55hR62oPfjKsGeC2By+Rc5xZuGo/E4BJEI3V7U=; b=IzwhsElF6zDQ0EwRapEl2LsZfF
 MQMi2gZKNt4ahNSaX1hoJCGJT5AzqCHzKTV6skDM/pj5ovS9r+SDLu9v19Sno3aNJjjLO1l/Ew6C/
 g9zzQ1K2PlLApzdZQBA39NCqh5aLBnIc9UgwN/uLXserfFni9n2yn2mk3UPqA8M8Lh88=;
Received: from mail-oo1-f41.google.com ([209.85.161.41])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nP5LW-001StP-9y
 for v9fs-developer@lists.sourceforge.net; Tue, 01 Mar 2022 16:27:31 +0000
Received: by mail-oo1-f41.google.com with SMTP id
 r41-20020a4a966c000000b0031bf85a4124so23059871ooi.0
 for <v9fs-developer@lists.sourceforge.net>;
 Tue, 01 Mar 2022 08:27:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=MlK3S55hR62oPfjKsGeC2By+Rc5xZuGo/E4BJEI3V7U=;
 b=hnv1b57Y4vQ/O0SpVLTGmHdKAUsOeKaNgEEQ44q2ZhpWaOYBqEDHPn+iG5XQXwSeOx
 +Vv4wGxHSHHKzIGHNkWjMRquQtGGTlYPfv/jvcsYFTNO8agTQf1A+NhIa/jHc4F84nfw
 fFF5/6t+Ljo+2xqtXInhKAM7Zn+5Izlr5wKJXQqUgFFNmZRLv2ZF0i+cUx5rah9P1x4P
 xrq2RCIav3HYapw7+RMJnrEiFV8lAcwY2YtSMk9xhXP33JBrjM0vFTSZ/Ra50Yrf9Xk4
 yKX92nw7JeyjIoFsfaqi3jNA1NzL504X4ZKzpH1ybJUCcN2MC7oLc56Rw8TV++NeCSDB
 pmYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=MlK3S55hR62oPfjKsGeC2By+Rc5xZuGo/E4BJEI3V7U=;
 b=Ob9C3Fi7tyCxi8eGCpcvs0UX4KhMa2m6VvTlGfcwVmoLwL5n68tKcAgLanDtyGf9vC
 M1FMaXN/F6eLtKVj3yKJfJpndA9qoYZ+xd/OldzkBX3gEQC75RSomILVpaHmmLhpauDd
 PpB8TW9nKUj9Q8RdulGA6nvXE+UQoCTnVSKYhQeUV/wqFd0mMYfuqE/1BHcfWhtjSAoX
 vWqqknMVQMBErKS4Y2Jy5wI1TcJI4xK+3Ivt6/2st5lRnjKmzdwg8Q2Kov0oTFbrd76I
 HC8PhUv3/Qnh/EXbjPZhA1Qm+vkgIgvTzsJiX43PXG0+SCF65UtCNlYeQqhw2Y+2WEjZ
 uPDw==
X-Gm-Message-State: AOAM530jlbwvLf82zjQ5bup48qn/3Aw7AZNH57xJa2G9zzLoxx/VLpNL
 gCxZv1RCTRDu18VM1r0sJstZSEtqhqTEvYkvuQ8=
X-Google-Smtp-Source: ABdhPJxqf7QcKhFoYvq7Fqt8Vss3azZ9+aFCFeKxTqlznCs5VkZU5ZVFqp0Eh8cmnnYpCNYxqm6gAl4cmFiCl50AGJ4=
X-Received: by 2002:a05:6870:1481:b0:d7:30a3:1f39 with SMTP id
 k1-20020a056870148100b000d730a31f39mr5766930oab.14.1646152044467; Tue, 01 Mar
 2022 08:27:24 -0800 (PST)
MIME-Version: 1.0
References: <621bfbc1.1c69fb81.434f2.b439SMTPIN_ADDED_MISSING@mx.google.com>
 <CAP6exYJ-Mx+bDCYWYPcOmqjXHQgmecTkZQ3PT=iQXFO0ZBVdMA@mail.gmail.com>
 <CAFkjPTnVJzc215ZX6WnwnYYuxyOq1aH2-8sgpYyQOJgZbAJM8A@mail.gmail.com>
 <CAP6exYJZMCyqdouDY5DGOPViy1GW=qfGKY5nM247H3FE38n3Xw@mail.gmail.com>
 <CAFkjPTk7kwTT3YVYQuA0tsuaXaxnt7jBC94+fmtmfj=0W+Dw-Q@mail.gmail.com>
In-Reply-To: <CAFkjPTk7kwTT3YVYQuA0tsuaXaxnt7jBC94+fmtmfj=0W+Dw-Q@mail.gmail.com>
From: ron minnich <rminnich@gmail.com>
Date: Tue, 1 Mar 2022 08:27:13 -0800
Message-ID: <CAP6exYK3BFWK0yAfo=HvdmhPu_-txdWJj4XLxPyLU5=up4Kg5Q@mail.gmail.com>
To: Eric Van Hensbergen <ericvh@gmail.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: I suspect we've lost the battle for virtio environments.
 Whether
 or not 9p can be made fast enough, the common wisdom is that it can't be,
 and alternatives are in use already. My personal hope is to m [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rminnich[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.41 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.41 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1nP5LW-001StP-9y
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

I suspect we've lost the battle for virtio environments. Whether or
not 9p can be made fast enough, the common wisdom is that it can't be,
and alternatives are in use already. My personal hope is to make 9p
run at wire speed on real networks, b/c that's my use case :-)

For reference, since I don't recall if I shared the link describing
cpu: https://docs.google.com/presentation/d/12_mZR-tpjHNrq6xMEqXQMHPiQej4o3Mink-Rkapiw50/edit?usp=sharing

On Tue, Mar 1, 2022 at 8:19 AM Eric Van Hensbergen <ericvh@gmail.com> wrote:
>
> Yeah - to be clear, I think the results we had before were fine in network situations -- what I am less aware of is similar measurements of those optimizations in the zero-copy shared-memory virtio environments between host and guest, doesn't mean they don't exist -- just all the ones I remember were over the network.
>
>         -eric
>
>
> On Tue, Mar 1, 2022 at 10:14 AM ron minnich <rminnich@gmail.com> wrote:
>>
>> Eric, all this stuff can be measured, which I've done, and in the
>> presence of several different active FIDs, at least when I did it,
>> msize was not nearly as effective as asynchrony for smaller packets.
>> This kind of makes sense: most files are small. Further, per my
>> earlier note, write performance of things like gld is dramatically
>> improved when the client buffers and groups a lot of small writes into
>> smaller big writes -- it does not take a big msize either: if you
>> convert, e.g., 1000 3 byte writes into 1 3000-byte write, the
>> improvement is pretty dramatic (measured in 1998). This argues for the
>> caching improvements this community has made. I will try those with my
>> cpu command.
>>
>> but all this can be measured. I don't really object to a big msize,
>> it's just that it's not the panacea we all (me too!) used to think it
>> was. TBH, florens' streaming 9p was by far the best improvement we
>> ever had for large delay networks -- but we've never figured out a way
>> to cleanly integrate that.
>>
>> I'll try to get some measurements. I need cpu to be fast on LInux, and
>> I want to stop hearing this "9p is inherently slow" bogosity I keep
>> running across :-)
>>
>> thanks
>>
>> On Tue, Mar 1, 2022 at 5:24 AM Eric Van Hensbergen <ericvh@gmail.com> wrote:
>> >>
>> >> The first thing everyone does to try to fix 9p slowness is "grow the
>> >> MSIZE." This can help, but it can hurt.
>> >
>> >
>> >> It can help, in that, basically, for an msize like even 8K, you can
>> >> read the entire file in one go.
>> >
>> >
>> >> It can hurt, in that, for really big files, with a big delay-bandwidth
>> >> product, you're going to get head-of-line blocking:
>> >> each Tread will wait on that "really big Tread" before it to finish,
>> >> so your time between Treads will be LARGER.
>> >
>> >
>> > I was thinking about this a bit more and had the (duh) realization that they aren't optimizing for wire, they are optimizing for shared memory.  When principal use case is VM/Container file system pass through the main thing you end up optimizing for is number of transitions which ~= number of packets -- so you want as big of a potential msize as you can possibly get because then if they can use it they get the most optimal whereas if they don't need it they don't need to use the entire size.  There does end up probably being a tradeoff w.r.t. buffer sizes but not sure that shows up with virtio zero copy.  I suppose you might still get head of line blocking due to large transaction sizes on underlying storage -- but that could be mitigated with more asynchrony on the server side.
>> >
>> > Now, thinking about this in the context of what we are proposing for the client end -- merely doing async and read-ahead isn't going to get us the same bang for the buck as its going to increase message size and then hypothetically the number of virtio transactions/transitions -- what we'd need to take advantage of that is some form of grouping of transactions before sending across the wire to minimize the transitions and for a bunch of reads wouldn't that end up being similar to a large MSIZE?  However for other types of transitions you could imagine speculative operations (something like directory traversal or directory listing) where grouping might give you a bigger boost but not sure I see a clear path to how you would do that -- for dir lists you'd get something closer to what plan 9 already has, but we don't currently cache the stat information IIRC, so we'd need to figure out how to do that so subsequent stats would use the (potentially slightly stale) cache versus reissuing a stat.  So -- not sure grouping is the way to go, aggressive caching and minimizing total operations seem to be the best for the VM space -- different optimizations might make more sense for true networking.
>> >
>> >           -eric
>> >
>> >
>> > On Mon, Feb 28, 2022 at 12:31 PM ron minnich <rminnich@gmail.com> wrote:
>> >>
>> >> On Sun, Feb 27, 2022 at 2:31 PM <ng@0x80.stream> wrote:
>> >>
>> >> > Forgive the naive question, but would this change entail that a
>> >> > client may not observe its own writes? (Because the client may send
>> >> > Twrite and Tread but the Tread may be served first, I mean.) Isn't that
>> >> > undesirable? What do other file systems do?
>> >>
>> >> I have thought about this, and think we can resolve it on the client
>> >> side with some rules.
>> >>
>> >> Treads are considered to be independent of each other and idempotent (NFS rules)
>> >> - This will break for things like mice, sockets, etc. Do we care? Do
>> >> people on LInux use
>> >> 9p for streaming devices, Unix FIFOs, etc.? In my case, I do not.
>> >>
>> >> Twrites act like a fence for Treads, i.e., if there is a Twrite, it
>> >> blocks on pending reads, and
>> >> new reads block on the Twrite to finish.
>> >>
>> >> Tclunk acs like a fence for all pending IO. If there are Twrites, it
>> >> blocks on them, else
>> >> it blocks on pending reads.
>> >>
>> >>  Note that: this is all client logic. It is probably logic I will be
>> >> testing in Plan 9 in the next few months.
>> >>
>> >> A few other notes from a lot of years snooping Plan 9.
>> >>
>> >> The first thing everyone does to try to fix 9p slowness is "grow the
>> >> MSIZE." This can help, but it can hurt.
>> >>
>> >> It can help, in that, basically, for an msize like even 8K, you can
>> >> read the entire file in one go.
>> >>
>> >> It can hurt, in that, for really big files, with a big delay-bandwidth
>> >> product, you're going to get head-of-line blocking:
>> >> each Tread will wait on that "really big Tread" before it to finish,
>> >> so your time between Treads will be LARGER.
>> >>
>> >> The other issue with big MSIZE is that it also limits concurrency over
>> >> multiple FIDs, for the same reason: the connection
>> >> is not usable for blocks of time as it is moving 1M blocks for one FID.
>> >>
>> >>  Big block size is an obvious fix with subtle negative impacts.
>> >>
>> >> All this I've seen in the wild, on big machines.
>> >>
>> >> Anyway, I will try the caching stuff, sounds very interesting, and see
>> >> how it impacts my  cpu (github.com/u-root/cpu) command;
>> >> 9p performance is critical to that command.
>> >>
>> >> Thanks again for the work!
>> >>
>> >> ron


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
