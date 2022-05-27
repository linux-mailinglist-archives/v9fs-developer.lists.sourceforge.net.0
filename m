Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8EC536832
	for <lists+v9fs-developer@lfdr.de>; Fri, 27 May 2022 22:45:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1nugph-0007Qg-CP; Fri, 27 May 2022 20:45:17 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <keescook@chromium.org>) id 1nugpg-0007Qa-Ic
 for v9fs-developer@lists.sourceforge.net; Fri, 27 May 2022 20:45:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+uKoFrA1MB7Px4Hceb9HtqBEm7hxyzDunzaSFZdZ65E=; b=fd1JBpJMi3PSTQMazWnsPfjY1r
 mIrfQ78Vq0fQnOusPCP9Or/hRAxjWrV1csunnA2W2ZZ/wRFo2oyByrdZHfzmQLAFRZrEdlCSRsOxz
 3oGlG9AQI/mkTg0VqddZnvG1Tra5AjaAqd4ZBc2EmB76mMoh7GmKSeCV3kW3ekADZoBE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+uKoFrA1MB7Px4Hceb9HtqBEm7hxyzDunzaSFZdZ65E=; b=EwfitUAl/EEVYmzam8bbmgDDZ0
 465mwLQgmP2+o9CoUAyyUp8nDVmQ0KxvV2h6CQGuln/Uw4LRQfLSzlgWc9qBppASgXOsjmFSL1MPs
 RKCCKjsGOV920/P80sV+DaK441AIe+rwS+vcE3otCz50dvXOtgXi1Ufo9DKe/QaCWZdw=;
Received: from mail-pl1-f182.google.com ([209.85.214.182])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nugpc-005Aok-B2
 for v9fs-developer@lists.sourceforge.net; Fri, 27 May 2022 20:45:16 +0000
Received: by mail-pl1-f182.google.com with SMTP id s14so5084589plk.8
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 27 May 2022 13:45:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=+uKoFrA1MB7Px4Hceb9HtqBEm7hxyzDunzaSFZdZ65E=;
 b=JpMHO7nYYfFDaaxxq/wzIXsc4I/Z9xgwdZE0rzhnywmrdGZcUtKA/KrIyU0IeU6GnG
 6cD89RcSRO+j9Xoo1ueLijOKuYZGA2nzUwHP9WwPfga0WnX/xc0QfCNn6vNII/OoLrWD
 KIRjgDhUVv807X+e9rHfxUjNc4U8RMrb5BBBA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+uKoFrA1MB7Px4Hceb9HtqBEm7hxyzDunzaSFZdZ65E=;
 b=i7u47tpWZSR18xnwJqE2gKjp5X2oSvZ4SABq0AcjvFWW51gMvitX+IPEY/O4OB4wcg
 a8nIdK4jj+FN1bFwSxKDBCkZz+ob1XTWcsucSedZVQDoot1FQR/tnMCacIZkVdchRC0N
 3Jsktx76R5YeCil+N8iDrqboGpSjKKN0T6oz24OMbob+9x41ZtvWQbgM9fNF9a+47Tlc
 tn8Vr+q719+fgxMlFURqztprFR5lOnleWBHEAAwpx7ud41UIfVHHKoLSmm3yaKDh27ZB
 wqyP3/8VFzyafsJtJSusGLdb8jE99td85tA7heFkYsUEY1xNvpjDzls41Pxk7a1nsix6
 /92Q==
X-Gm-Message-State: AOAM533VLyFKy0hLJcSkba3cCsDntmCmGHi4OvXAtwcKm77cIhsqVJwp
 NSUH9sBgVviPuAlO/yx1VhyQqQ==
X-Google-Smtp-Source: ABdhPJwQP43RMakt2LwIAl78pe4ca3GgoTmEwDTY2EZSPcZfvlKlZeVTUOXcUXS3K+fJrEcGQhpsnQ==
X-Received: by 2002:a17:90b:1c8f:b0:1b8:c6dc:ca61 with SMTP id
 oo15-20020a17090b1c8f00b001b8c6dcca61mr10068623pjb.13.1653684306778; 
 Fri, 27 May 2022 13:45:06 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 o1-20020a170902d4c100b0015e8d4eb20esm141656plg.88.2022.05.27.13.45.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 May 2022 13:45:06 -0700 (PDT)
Date: Fri, 27 May 2022 13:45:05 -0700
From: Kees Cook <keescook@chromium.org>
To: David Howells <dhowells@redhat.com>
Message-ID: <202205271344.75AC356A5@keescook>
References: <202205190704.1DC660E5E@keescook>
 <165296786831.3591209.12111293034669289733.stgit@warthog.procyon.org.uk>
 <3598052.1653654453@warthog.procyon.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3598052.1653654453@warthog.procyon.org.uk>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, May 27, 2022 at 01:27:33PM +0100,
 David Howells wrote:
 > Hi Kees, > > Is v2 good for you? I realise I left your R-b attached to
 it when I posted > it, but I can remove that if you don't have t [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.182 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.182 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nugpc-005Aok-B2
Subject: Re: [V9fs-developer] [PATCH] netfs: Fix gcc-12 warning by embedding
 vfs inode in netfs_i_context
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
Cc: Latchesar Ionkov <lucho@ionkov.net>, linux-cifs@vger.kernel.org,
 William Kucharski <william.kucharski@oracle.com>, linux-doc@vger.kernel.org,
 Jonathan Corbet <corbet@lwn.net>, Eric Van Hensbergen <ericvh@gmail.com>,
 samba-technical@lists.samba.org,
 Christian Schoenebeck <linux_oss@crudebyte.com>, jlayton@kernel.org,
 linux-kernel@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 linux-fsdevek@vger.kernel.org, Steve French <smfrench@gmail.com>,
 ceph-devel@vger.kernel.org, linux-hardening@vger.kernel.org,
 Marc Dionne <marc.dionne@auristor.com>, v9fs-developer@lists.sourceforge.net,
 Ilya Dryomov <idryomov@gmail.com>, Xiubo Li <xiubli@redhat.com>,
 linux-afs@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

On Fri, May 27, 2022 at 01:27:33PM +0100, David Howells wrote:
> Hi Kees,
> 
> Is v2 good for you?  I realise I left your R-b attached to it when I posted
> it, but I can remove that if you don't have time to review it.

Oh! Yes, it's good. Since you kept the R-b, I didn't reply. It looks
good to me. Thanks!

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
