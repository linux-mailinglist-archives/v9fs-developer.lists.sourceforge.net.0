Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2374A693B90
	for <lists+v9fs-developer@lfdr.de>; Mon, 13 Feb 2023 02:01:44 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1pRNDz-000283-MW;
	Mon, 13 Feb 2023 01:01:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ericvh@gmail.com>) id 1pRNDy-00027x-Co
 for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Feb 2023 01:01:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wvWB0IGgt/sKh0ffhYyykSnLZxL6L/z3QJhVmslJkPw=; b=hbinmM1l+g+OsAqkqlfF67ul4k
 JwOPSJYKgIDaJQ1l0L5GeDlpgL/8GOJuewZ9Qv6wtcnjae0G1eWLl65Afl/Ij/nQwX0oPfIAsMn+e
 3wvf18dTuakhI0cZs663/Wuv0H45CeNTzjlzpjyVmf10Xi0XRpfJHIJ/lntM8zWz/i9U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=wvWB0IGgt/sKh0ffhYyykSnLZxL6L/z3QJhVmslJkPw=; b=fDeMZEmZziRkY0QKAkdXvw0xMu
 sVsfP5nZHCbZsv9LHXYvyWdgAZOGkFxTv8you+2d/WBWckhAn5akZKzwUpoJXf5yxonOMm3aDE+LB
 6bt028yaWUIzsUdKlbhp3L5uHWeckrICMJ09oeHIn38zIf86C15ho0gsPgqCmZ/GnN7o=;
Received: from mail-wm1-f41.google.com ([209.85.128.41])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pRNDx-002Gu7-0Q for v9fs-developer@lists.sourceforge.net;
 Mon, 13 Feb 2023 01:01:41 +0000
Received: by mail-wm1-f41.google.com with SMTP id
 k8-20020a05600c1c8800b003dc57ea0dfeso10210231wms.0
 for <v9fs-developer@lists.sourceforge.net>;
 Sun, 12 Feb 2023 17:01:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=wvWB0IGgt/sKh0ffhYyykSnLZxL6L/z3QJhVmslJkPw=;
 b=qX6PC/K3WhKWqWwug1Hs7XJ6+CpSHoPdL25A3fJttYWOj9W3Y0ZjeVrMZ5Oh6ILDaF
 pz9oT0GQnDaV/wjbOPCZDTDihV1Ur0DfcrXNU32TDZLjTinuRRljn7AXUYL1is3yvFwm
 zAT+NUDLY+J3v2XhP+sGM4tfsoc9OeFb0X0Onh3p0CB8mA2f7ykC5XtV4p1/ugMKaJbJ
 tWauS2xt5PWgZOD09P0QNPtRr9rvQSmQJCRjBg8qokCfgKA26VHj1bNDcQ/O5GVGGRFj
 4o2QTi5Of1oulLCxOPg6q5t2w1IVYGAxsn2/6qSvy1CoZ/POJPRMIPv6ovnKINHRnrMb
 qDfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=wvWB0IGgt/sKh0ffhYyykSnLZxL6L/z3QJhVmslJkPw=;
 b=ev0H7jsnBHbHD7joD+TK5jjMPtguqsZt0zNXgXt+pDseZGL/H5sPX4CYIsEKQD49Tt
 dOE4p0cDlZAUuE416oav764Uw0NRoGKxZKc4PLRCV0pgFcA4v8FcrClzHmOZsg32GaUi
 1rZLIKQTNtc1IiYi2nxS9OZKViI4PXi3ew1f5+5gyyC81lrJDI9Rpw3rK+CJscVWmFLz
 yUFaH60BtkXqzVKUta8Rj41RBYqW4DKpA5s6/Y8HU2u2mgZIevQeQmjaJJlpH8aaQLdW
 Ruvg5wxx/wMEhTK+J2AhMbQFOgHP4SeZNtpt18MPa6bSwpK2x+l0GIEDW2Ll/C8ZFrcr
 uO6g==
X-Gm-Message-State: AO0yUKWsZv9oPydAWhJ+vOpCEMPwbkYRF/cQjJ5xyZPQY8OP/kKLqtPG
 3SPPvxZQCocmBYZqyLvkO9JudSVNCaIo4wpIpe0=
X-Google-Smtp-Source: AK7set8x17tK8f7EAsHHY/ilqFDNo86cF1vHIttJ/nAeJu2g3nR9RPE6Z6NGnxUWqIjDBfKDW9dOQaIJ2w0dnhzehFg=
X-Received: by 2002:a05:600c:2212:b0:3d1:e3ba:3bb6 with SMTP id
 z18-20020a05600c221200b003d1e3ba3bb6mr1121280wml.29.1676250094366; Sun, 12
 Feb 2023 17:01:34 -0800 (PST)
MIME-Version: 1.0
References: <20221218232217.1713283-1-evanhensbergen@icloud.com>
 <9010570.AfT4dvHSuA@silver>
 <CAFkjPTkcGC_eBp8Db2b48rtbFads+2KGkD1DZRL=C6k-4uX0oA@mail.gmail.com>
 <3428263.euj80CISbX@silver>
 <CAFkjPT=_SRORm=J9sxx0CxAWOGvKft-ZXhtNseHm5NNpv9TrLg@mail.gmail.com>
 <CAFkjPTkqHs091FeePjZsPS8eNQoPY+HJiW1nS7KTDgEEue9XFQ@mail.gmail.com>
In-Reply-To: <CAFkjPTkqHs091FeePjZsPS8eNQoPY+HJiW1nS7KTDgEEue9XFQ@mail.gmail.com>
From: Eric Van Hensbergen <ericvh@gmail.com>
Date: Sun, 12 Feb 2023 19:01:22 -0600
Message-ID: <CAFkjPTn=6+X1=b4sfAd8LrZ2xuJF_4hsDbUmFZtifpROTTtB9g@mail.gmail.com>
To: Christian Schoenebeck <linux_oss@crudebyte.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  (sorry - changes are in the for-next branch, need to do some
 merging into my v9fs-devel branch) On Sun, Feb 12, 2023 at 7:00 PM Eric Van
 Hensbergen wrote: > > Okay, after much thrashing about, I think I figured
 out what was going > wrong -- seems filemap_write_and_wait didn't quite do
 what I t [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ericvh[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.41 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.41 listed in list.dnswl.org]
X-Headers-End: 1pRNDx-002Gu7-0Q
Subject: Re: [V9fs-developer] [PATCH v3 00/11] Performance fixes for 9p
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
Cc: lucho@ionkov.net, v9fs-developer@lists.sourceforge.net,
 Eric Van Hensbergen <ericvh@kernel.org>, rminnich@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

(sorry - changes are in the for-next branch, need to do some merging
into my v9fs-devel branch)

On Sun, Feb 12, 2023 at 7:00 PM Eric Van Hensbergen <ericvh@gmail.com> wrote:
>
> Okay, after much thrashing about, I think I figured out what was going
> wrong -- seems filemap_write_and_wait didn't quite do what I thought
> it does when the superblock isn't marked as synchronous (which it used
> to be if caches weren't enabled).  In any case, I replaced the
> filemap_write_and_wait writeback flushes with something a bit heavier
> weight and it seemed to get rid of the problem for my test cases.  I
> will be doing some more testing, but if you get a chance see if it
> gets rid of your problems as well.
>
>        -eric
>
> On Mon, Feb 6, 2023 at 7:59 AM Eric Van Hensbergen <ericvh@gmail.com> wrote:
> >
> > On Mon, Feb 6, 2023 at 7:46 AM Christian Schoenebeck
> > <linux_oss@crudebyte.com> wrote:
> > >
> > > Can't we just close old pages when a certain number is piled up? Originally I
> > > assumed that the generalized, shared cache code would do that automatically at
> > > a certain point.
> > >
> >
> > Indeed, I'm sure that's there but probably only once the page cache
> > approaches the memory limits.  However, that behavior should be
> > uncoupled from the fids themselves anyways, fids really should only be
> > there for open-files and even if we have writeback-fids, they should
> > only be there for dirty open files (although have to keep them for all
> > open-files because of the weird open without re-open permissions
> > behavior).
> >
> >        -eric


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
