Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F90E6F5F51
	for <lists+v9fs-developer@lfdr.de>; Wed,  3 May 2023 21:42:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1puIMZ-0005Na-1p;
	Wed, 03 May 2023 19:42:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mail@ianyuyg.cn>) id 1puIMX-0005NT-In
 for v9fs-developer@lists.sourceforge.net;
 Wed, 03 May 2023 19:42:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Mime-Version:Message-ID:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MgJmCYWNS6HVEAEyNdoKAP+eGiNBzbyZnK+VBULALmE=; b=lfDdru0N8sKpzgP8HZGZeP8LlZ
 msqjexjv6wPrYVdv0D0ZGMUZeQN+O1ClsxdWnBcvdX6gPmd3d59yDLKSbZIGDShpaZqBlR7DNiqtG
 BCo0Q9gEDwPydFI/NcfMFiOGrAfRLazxwt4SoXD5/sfcrew2TSWpPvF7VFvt/gvlEOpQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Mime-Version:Message-ID:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=MgJmCYWNS6HVEAEyNdoKAP+eGiNBzbyZnK+VBULALmE=; b=D
 piVg3TpAw7YaKbasf4mBF30STJB2rUD0WEcMyqamBV0OLr130Td93FgfhjMrasMLl4scE7tr4XEj9
 Wh7l3iYW30WMYv5s6b2GUkWRa0t1XphThxavb/3pNH+3Ui4haQEPnz3OkYbwP8A8dpQgjEDqvVMsJ
 Rx01Ctr7wu/+hhhg=;
Received: from [38.84.171.179] (helo=mail18.ianyuyg.cn)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1puIML-00DCTM-58 for v9fs-developer@lists.sourceforge.net;
 Wed, 03 May 2023 19:42:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; s=default; d=ianyuyg.cn; 
 h=Date:From:To:Subject:Message-ID:Mime-Version:Content-Type;
 i=mail@ianyuyg.cn; 
 bh=MgJmCYWNS6HVEAEyNdoKAP+eGiNBzbyZnK+VBULALmE=;
 b=ntwtm6/dAilbf1NYd6AKsvTkDYC6pRe2lbdXcqiOA987uXpnuzA1MHF/XcY5xyJC+dBuPICwmEh0
 1YFgQpweQtdAR1zD+2L5uo+FcYJf9iiYlb0x6u+AibzPxDL/iROGAk0oF6c3Pus/bAJdq3ee7Bjs
 QR3nRhSCNjn1Q1iFwb4=
Date: Thu, 4 May 2023 03:21:23 +0800
To: <idpfbhq@flpgnuvew.net>, <ienjoymusic@sbcglobal.net>, <wilfordn69@usa.net>,
 <zeus3813@att.net>, <pete@pulstar.net>, <n.santander@cadenacope.net>,
 <tecnico.santander@cadenacope.net>, <zfamily1511@zoominternet.net>,
 <info@szeek.net>, <sales804@amybenton.net>, <sales805@amybenton.net>,
 <sales844@amybenton.net>, <saleseu@amybenton.net>,
 <illegal@kreis.heldengedenktag.net>, <analab@ms46.hinet.net>,
 <paul2017za@secretary.net>, <zhaoxi@ccmworld.net>, <test@dacris.net>,
 <payeeoffice212@earthlink.net>, <draget@speciesm.net>,
 <erik@retailnext.net>, <lemt4644@charter.net>, <jaka@koofr.net>,
 <test@eyooon.net>, <zhkvaml@sbcglobal.net>, <test@fengli.net>,
 <test@greencom.net>, <mail@maximilianschneider.net>, <info@airtek.net>,
 <adamsz@gmx.net>, <lena79@bankerinter.net>, <nikita@elyzion.net>,
 <unclebenny1@verizon.net>, <gigaset307x-common@lists.sourceforge.net>,
 <emdotpeadotsea@worldnet.att.net>, <unclebob@nym.alias.net>,
 <test@lokeshgroup.net>, <unclebob@roava.net>, <unclebob@talkamerica.net>,
 <unclebobcef@verizon.net>, <graham@flags.net>, <padgett@gdi.net>,
 <info@alipa.net>, <pc@gafol.net>, <test@mail.u-ude.net>, <chaixs@263.net>,
 <unclecurt@sbcglobal.net>, <uncled@zoominternet.net>,
 <test@mail2.adeonline.net>, <shripchenko@intermedia.net>,
 <info@alluringmedia.net>, <thecars21@verizon.net>, <hcnestyfur@263.net>,
 <unclefish@adelphia.net>, <info@necr.net>,
 <info@appraisal-professionals.net>, <benjamin.thery@bull.net>,
 <kevin.chandoo@streamlandmedia.net>, <leighton.greer@streamlandmedia.net>,
 <creativedesigns1@cox.net>, <webform@b4h.net>,
 <rachel.matchett@streamlandmedia.net>,
 <linux-ima-devel@lists.sourceforge.net>,
 <linux-ima-user@lists.sourceforge.net>, <service@baoman.net>,
 <test@rgsu.net>, <uncrossed@cox.net>, <dbaker@go-tag.net>,
 <lendmanstephen@sbcglobal.net>, <djamison@frontporch.net>,
 <und@bright.net>, <lendy@pop.cris.net>, <info@arch-aid.net>,
 <und@md2.vsnl.net>, <und@melsa.net.id>, <test@shoneez.net>,
 <brking@charter.net>, <jane@jsrassociates.net>, <jbeaman@charter.net>,
 <under@any.net.au>, <underdo@vnet.net>, <underdog@bullwinkle.rocky.net>,
 <rio500-users@lists.sourceforge.net>, <info@autocollisionoftulsa.net>,
 <smoran@seniorlivingforesight.net>, <underwood_robert@bellsouth.net>,
 <testadmin@two-s.net>, <undies@hot4ya.net.au>, <testing@ivehost.net>,
 <testtest@premium-water.net>, <undrtakr@agt.net>, <doug@nostar.net>,
 <dleonard@rochester3a.net>, <v9fs-developer@lists.sourceforge.net>,
 <jhill@rochester3a.net>, <jrboudouris@rochester3a.net>,
 <jspear@rochester3a.net>, <dvrabel@cantab.net>, <el@prans.net>,
 <thefab4@cox.net>, <support@emailarchitect.net>
Message-ID: <20230504032128427413@ianyuyg.cn>
Mime-Version: 1.0
X-Spam-Score: 7.2 (+++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Dear idpfbhq: ¸ù¾ÝÈËÁ¦×ÊÔ´ºÍÉç»á±£ÕÏ²¿×îÐÂÎÄ¼þ¡¶¹ØÓÚËùÓÐÄÉË°ÈËÍËË°²¹ÖúÓÐ¹ØÎÊÌâµÄÍ¨Öª¡·ÒªÇó£¬¹ú¼Ò½«°´¹æ¶¨¶ÔËùÓÐÄÉË°ÈËÔ±½øÐÐºË¶¨Éê±¨£¬ËùÓÐÈË¾ùÐè°´ÕÕÐÂµÄºË¶¨»ùÊýÒÀ·¨ÉêÇë²¹Öú¡£
    ¸ÃÍ¨ÖªÉÏÖÜÒÔÏÂ·¢£¬Çë¼°Ê±Íê³ [...] 
 
 Content analysis details:   (7.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  2.5 URIBL_DBL_SPAM         Contains a spam URL listed in the Spamhaus DBL
                             blocklist
                             [URIs: ianyuyg.cn]
  3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
                             [38.84.171.179 listed in zen.spamhaus.org]
  0.1 URIBL_CSS_A            Contains URL's A record listed in the Spamhaus CSS
                             blocklist
                             [URIs: ianyuyg.cn]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 HTML_FONT_FACE_BAD     BODY: HTML font face is not a word
  0.0 HTML_OBFUSCATE_05_10   BODY: Message is 5% to 10% HTML obfuscation
  0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1puIML-00DCTM-58
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?gb2312?b?xPrT0NDCtcTTyrz+o6E=?=
X-BeenThere: v9fs-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: "deprecated: use v9fs@lists.linux.dev"
 <v9fs-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=v9fs-developer>
List-Post: <mailto:v9fs-developer@lists.sourceforge.net>
List-Help: <mailto:v9fs-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/v9fs-developer>, 
 <mailto:v9fs-developer-request@lists.sourceforge.net?subject=subscribe>
From: =?gb2312?B?yee74bGj1c+yvw==?= via V9fs-developer
 <v9fs-developer@lists.sourceforge.net>
Reply-To: =?gb2312?B?yee74bGj1c+yvw==?= <mail@ianyuyg.cn>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

RGVhciBpZHBmYmhxOg0KICC4+b7dyMvBptfK1LS6zcnnu+Gxo9XPsr/X7tDCzsS8/qG2udjT2sv5
09DEycuwyMvNy8uwsrnW+tPQudjOyszitcTNqNaqobfSqsfzo6y5+rzSvauwtLnmtqi21Mv509DE
ycuwyMvUsb340NC6y7aoyeqxqKOsy/nT0MjLvvnQ6LC01dXQwrXEusu2qLv5yv3SwLeoyerH67K5
1vqhow0KICC4w82o1qrJz9bc0tTPwreio6zH67ywyrHN6rPJusu2qMnqsaihowpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpWOWZzLWRldmVsb3BlciBtYWls
aW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlz
dHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
