Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8655F26E93
	for <lists+v9fs-developer@lfdr.de>; Wed, 22 May 2019 21:51:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1hTXGS-0004lQ-MW; Wed, 22 May 2019 19:51:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux.bhar@gmail.com>) id 1hTXGR-0004lJ-AN
 for v9fs-developer@lists.sourceforge.net; Wed, 22 May 2019 19:51:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=53aAc4kEic3W8LcByj9D1czfciT2GPYNahiN2QB6f+o=; b=UlD3oQLb6PftGqtY4T6sOdjmyB
 1BO/TQdsaNGYkmXTxDu4y/GU7yJhtzyi+hcpjhIsF1CwZn6MZLGAFV7azvDW3IcRtfyM77XjXY0/6
 DfGDEA9fKQJeG74iqWWTroxA4+oYEzrVsea85S5c8mtjZt1XfjtcJ2P8L7IkUyxC64dY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=53aAc4kEic3W8LcByj9D1czfciT2GPYNahiN2QB6f+o=; b=bApy/yH8GzdwnyutdsXmVin8ON
 3PVgbHjAt3H1QpxHw340eb/GhC/C5x/jQFXlxVOR2W4Tjzv6AcF+GPzQ71hb1A/Nc3haMO2zGsAaq
 JLdBnKqVgG4p8qhEPf36mCOaeB7O0M6c6sar3d0Rt2jlzFp6KTwhNOLyjuUk/FyWfqlY=;
Received: from mail-pg1-f194.google.com ([209.85.215.194])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hTXGP-0073M1-Qt
 for v9fs-developer@lists.sourceforge.net; Wed, 22 May 2019 19:51:03 +0000
Received: by mail-pg1-f194.google.com with SMTP id n27so1840721pgm.4
 for <v9fs-developer@lists.sourceforge.net>;
 Wed, 22 May 2019 12:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=53aAc4kEic3W8LcByj9D1czfciT2GPYNahiN2QB6f+o=;
 b=Py5imB+ccN7o6LXfkutFeYUWW139CLz2E1VxTs2FXquuFqOV908mn8GmCCogVKfVP7
 U0UfBb1Aw7WEW8TgOBS8gBW0TR4pK21SIbiyho+nNveHwAggyHhCVdcsu0l+7ZzjDR01
 +Ht0Ky4pHLeIli3ddDYSb8qoZaqRUJme/YIOGPuSUH+kTIIwzcMjf78hER7RWWdk7mxn
 y75tPCC/S/EvS7tJRukNy2Y+VN4djxJOvFyOeSJShWuDKtkrbVp/6Yu46StX4Is7mG4a
 SgS0mNUs4iFVXLfdL2gN1ULWXzz7AntbrLKMNDjUmoX671+8orBXQTVle2Y/HdNOr/uN
 mqkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=53aAc4kEic3W8LcByj9D1czfciT2GPYNahiN2QB6f+o=;
 b=U1b1eTUFEG8621nW9zbJukFydKigjdzSoEN9ZCGnWym+YhMU8IwumdIUX5/mPh8NTv
 a8tyMU7p3OVLwgkapqSZqVEJBy3pkSgvh1x+IIdRFB7204rcpYmjLE5jwPXlzbQP0IKe
 AA7/vGzfX/FrWn8pJhlp0rWG53nNmuaublEsSfnTCnbdGe31tbMCfer1yDywdetqni//
 iy1vRXRSooO+lxGXmWbOPUyu/b2GFRQ0605B3llXZt76s615hYxEfCikZ9mUbmjCsEs0
 XXozGIl295vSMStlMiwF5uFw3DtabCbNem5s7dE9Yq9yczTzU75Xtq7Bkb3L7xWOVGx2
 +1gg==
X-Gm-Message-State: APjAAAWFFGOf5qerQwnyEJyJ1aCtOcNS1w/5ztXoKIss/IUr+xcAT+5E
 slbLnG62MOO9pQ+oIr7YiEfDuPxz
X-Google-Smtp-Source: APXvYqywlr35KcLDjQdk9Z84b/a2gL29NPf5ZP47XbE0nAbE4e5pr7hWtnxvnpZSKhoiqJ7q4CZn2w==
X-Received: by 2002:a65:614a:: with SMTP id o10mr75217907pgv.258.1558554656229; 
 Wed, 22 May 2019 12:50:56 -0700 (PDT)
Received: from bharath12345-Inspiron-5559 ([103.110.42.31])
 by smtp.gmail.com with ESMTPSA id d9sm32099917pgj.34.2019.05.22.12.50.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 12:50:55 -0700 (PDT)
Date: Thu, 23 May 2019 01:20:49 +0530
From: Bharath Vedartham <linux.bhar@gmail.com>
To: Dominique Martinet <asmadeus@codewreck.org>
Message-ID: <20190522195049.GA5363@bharath12345-Inspiron-5559>
References: <20190522194519.GA5313@bharath12345-Inspiron-5559>
 <20190522194733.GA4766@nautica>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522194733.GA4766@nautica>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (linux.bhar[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.194 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.215.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1hTXGP-0073M1-Qt
Subject: Re: [V9fs-developer] [PATCH v2] 9p/cache.c: Fix memory leak in
 v9fs_cache_session_get_cookie
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
Cc: ericvh@gmail.com, lucho@ionkov.net, linux-kernel@vger.kernel.org,
 v9fs-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

Cool! Thanks!

Thank you,
Bharath


_______________________________________________
V9fs-developer mailing list
V9fs-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/v9fs-developer
