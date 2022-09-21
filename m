Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D65CF5E5621
	for <lists+v9fs-developer@lfdr.de>; Thu, 22 Sep 2022 00:13:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1ob7xl-0005Wo-FZ;
	Wed, 21 Sep 2022 22:13:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <floridsleeves@gmail.com>) id 1ob7xj-0005WV-LW
 for v9fs-developer@lists.sourceforge.net;
 Wed, 21 Sep 2022 22:12:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8GbQ3Mfinwd6r1sMG2YjNleTdihes+CqHWAOwQ6w4uY=; b=LJEycaRx4HLtXvwycxJmRAbVtz
 CTS+W3tZg5eT5VhGCse4O+kZdVE/wdEH+A+I8MO3xZXw347dK7yJD/RydxwgGFr/6PKv3AKQgMUnb
 IwieeA9ceS5prnwrz1+GWjl38SF7UogKHv0/Gq/bRdCXeT5Ai6rf28S7FgI0v5Mje0EE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8GbQ3Mfinwd6r1sMG2YjNleTdihes+CqHWAOwQ6w4uY=; b=CRyVMAlU5vPwFFx+LH3owrQ+dr
 TX10FIXKhc1JaQGu5DzBy3oQIg8zFG2F1k6SJ1CFqc91pBbihFwibp7r6XnEHlexYNz0JLvT+YFls
 OZMxWalNE7luLa6adtLtuLlEWrG0jmfwlLRhpYANoVCo4z70gvHqhRjYwtQ/gw+sMXdw=;
Received: from mail-ed1-f42.google.com ([209.85.208.42])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ob7xf-00FuZW-3A for v9fs-developer@lists.sourceforge.net;
 Wed, 21 Sep 2022 22:12:59 +0000
Received: by mail-ed1-f42.google.com with SMTP id y8so10836949edc.10
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 21 Sep 2022 15:12:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date;
 bh=8GbQ3Mfinwd6r1sMG2YjNleTdihes+CqHWAOwQ6w4uY=;
 b=gYt8sIzFZZFusyT9qRFM2LvMtGyfnwzNNKkllsCCMYrtfudUDRMdUY4ltJNJ31gGkU
 Ipd3+LJuHW75XbJ4CdV0uWAxT3TFblldGsub6PtqSXBPCNgAP+lmGcq35AWQVFlt55fF
 Ogldh0CunuH719E4RC2J1ToST6eoBsGPbKipkDoyI2/5M62XWVK1XCg97KOD6Cc/bQwc
 Xbm5UrUk/Jrg+TkfqY1d7r5SjgjDIabKqWsVxA9kzeYi+rIRRW1/rpOPd/4Q1QJeM1p7
 +X+K0wUy4DrV0CWP3rACWEWsm4oz2VPTlF2V7T7Ns7ggScF8OdZXXe1frUO7fXxGtZZA
 g6lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date;
 bh=8GbQ3Mfinwd6r1sMG2YjNleTdihes+CqHWAOwQ6w4uY=;
 b=6J6vivVTRifM99kBSok+DIn8RPNO8NVxojPtcxXDt/YS9OCyLcE4Y6dk6PvL3bLKBD
 l6If450QDjN1RTLiWMpMvmMRKixNcTd0h2ChGw9d5ZgfXCuhZchdrd8rXEr7e/R4NCmn
 flKRZpEfeY49ERuMMsz09eERXNU78xXVF+h2Hsa1YtTVSbK4eHOx9a/SRAyUJzl4O5Fh
 p5SNwozCt4kvpsSX8FH7cc6L14KYb9VeJtreffKJewOB0mwo5mM0P4MNrxp84GPKsREd
 HA0kOLhwNE9RIKLGee0ie+WLEUNQetP101D/yem7MDiUca8j+tcqzaOqyA4yaeD2sHNp
 +1Ug==
X-Gm-Message-State: ACrzQf3PcdRIhcONzl5N9JHkNVT68/L4tjZVJB4ZkZtuxLEEOigzA+lE
 gTWJe6KtPOFN44CdfDUkiiCZI2hUm+pkX69wtH8=
X-Google-Smtp-Source: AMsMyM4RaHEYKNX3KYzs5qdoetS5YlKpGEPhxnRsMP52Hp/d2w6qvJLgPNjQWMMFEvGt1HZZavat/clo6LoQPdUUV70=
X-Received: by 2002:a05:6402:26cf:b0:451:70af:ecc5 with SMTP id
 x15-20020a05640226cf00b0045170afecc5mr232244edd.287.1663798368487; Wed, 21
 Sep 2022 15:12:48 -0700 (PDT)
MIME-Version: 1.0
References: <20220921210921.1654735-1-floridsleeves@gmail.com>
 <YyuA13q/B236lZ6U@codewreck.org>
In-Reply-To: <YyuA13q/B236lZ6U@codewreck.org>
From: Li Zhong <floridsleeves@gmail.com>
Date: Wed, 21 Sep 2022 15:12:38 -0700
Message-ID: <CAMEuxRo-QctyufOmAxZdoNrPE57KFd0MLa-kQftmhpHQfkWkJQ@mail.gmail.com>
To: asmadeus@codewreck.org
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Sep 21, 2022 at 2:23 PM wrote: > > Li Zhong wrote
 on Wed, Sep 21, 2022 at 02:09:21PM -0700: > > parse_opts() could fail when
 there is error parsing mount options into > > p9_fd_opts structur [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.42 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [floridsleeves[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.42 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1ob7xf-00FuZW-3A
Subject: Re: [V9fs-developer] [PATCH net-next v1] net/9p/trans_fd: check the
 return value of parse_opts
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
 linux_oss@crudebyte.com, edumazet@google.com,
 v9fs-developer@lists.sourceforge.net, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Wed, Sep 21, 2022 at 2:23 PM <asmadeus@codewreck.org> wrote:
>
> Li Zhong wrote on Wed, Sep 21, 2022 at 02:09:21PM -0700:
> > parse_opts() could fail when there is error parsing mount options into
> > p9_fd_opts structure due to allocation failure. In that case opts will
> > contain invalid data.
>
> In practice opts->rfd/wfd is set to ~0 before the failure modes so they
> will contain exactly what we want them to contain: something that'll
> fail the check below.
>
> It is however cleared like this so I'll queue this patch in 9p tree when
> I have a moment, but I'll clarify the commit message to say this is
> NO-OP : please feel free to send a v2 if you want to put your own words
> in there; otherwise it'll be something like below:
> ----
> net/9p: clarify trans_fd parse_opt failure handling
>
> This parse_opts will set invalid opts.rfd/wfd in case of failure which
> we already check, but it is not clear for readers that parse_opts error
> are handled in p9_fd_create: clarify this by explicitly checking the
> return value.
> ----
>

Thanks for the patient reply! I agree that the check on
opts.rfd/wft against ~0 will prevent error even if it fails
memory allocation. But currently the error log is
'insufficient options', which is kind of misleading and the
error code returned is -ENOPROTOOPT instead of -ENOMEM, which
I guess would be better if we distinguish between them.

>
> Also, in practice args != null doesn't seem to be checked before (the
> parse_opt() in client.c allows it) so keeping the error message common
> might be better?
> (allocation failure will print its own messages anyway and doesn't need
> checking)
>
> >
> > Signed-off-by: Li Zhong <floridsleeves@gmail.com>
> > ---
> >  net/9p/trans_fd.c | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/net/9p/trans_fd.c b/net/9p/trans_fd.c
> > index e758978b44be..11ae64c1a24b 100644
> > --- a/net/9p/trans_fd.c
> > +++ b/net/9p/trans_fd.c
> > @@ -1061,7 +1061,9 @@ p9_fd_create(struct p9_client *client, const char *addr, char *args)
> >       int err;
> >       struct p9_fd_opts opts;
> >
> > -     parse_opts(args, &opts);
> > +     err = parse_opts(args, &opts);
> > +     if (err < 0)
> > +             return err;
> >       client->trans_opts.fd.rfd = opts.rfd;
> >       client->trans_opts.fd.wfd = opts.wfd;
> >


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
