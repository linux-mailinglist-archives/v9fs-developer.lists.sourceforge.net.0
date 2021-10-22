Return-Path: <v9fs-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+v9fs-developer@lfdr.de
Delivered-To: lists+v9fs-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1AD437115
	for <lists+v9fs-developer@lfdr.de>; Fri, 22 Oct 2021 07:10:08 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <v9fs-developer-bounces@lists.sourceforge.net>)
	id 1mdmof-0001hY-TG; Fri, 22 Oct 2021 05:10:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <io@dnui.edu.cn>) id 1mdmoZ-0001hE-I0
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 05:09:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Message-ID:Mime-Version:Subject:To:
 From:Date:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=75EIKX27a7s1GIUDR7+ejmHtXeYgR2Cy3vQ0xSEensE=; b=Lib6Nq+3QypOL2SqbmJ8Fk3TZY
 E9DfxOjaOaE45dwtmWpLUhcu4AcEj0YEASUyEAsYaIWdL7HMNR0iEA1SQcjrhCFIBZ0VxqNGT9uEM
 pZmfSze+36ZI9TkIbxmg1BZuWpBQ1SlAxuukB/WCm3pBjtwURrJ7L2jnWw1l9t3Kekvw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Message-ID:Mime-Version:Subject:To:From:Date:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=75EIKX27a7s1GIUDR7+ejmHtXeYgR2Cy3vQ0xSEensE=; b=m
 L9nuC9qN3DkeenPuIrJgOYxBgjvhIw1rotjZTRN2oVs4+aFVvplkYxf1pm+EesIMzAKhN5sLPwQDe
 xteg8un1l+yK/iQeZBlg1xStQVdLWdLvFq6faFAG4i2NM3XhAmybeaEotCF6aklJQYNY0cfnCH0HW
 Zo4LtJd+rx1wDNAQ=;
Received: from [219.216.128.10] (helo=mail.dnui.edu.cn)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtp (Exim 4.92.3)
 id 1mdmoT-00BMHB-Bh
 for v9fs-developer@lists.sourceforge.net; Fri, 22 Oct 2021 05:09:59 +0000
Received: from qqw (unknown [123.169.89.155])
 by mail.dnui.edu.cn (Postfix) with ESMTPA id DAAEB93B3883
 for <v9fs-developer@lists.sourceforge.net>;
 Fri, 22 Oct 2021 13:09:39 +0800 (CST)
Date: Fri, 22 Oct 2021 13:09:27 +0800
From: ytslmghie <io@dnui.edu.cn>
To: v9fs-developer <v9fs-developer@lists.sourceforge.net>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7, 0, 1, 91[cn]
Mime-Version: 1.0
Message-ID: <202110221309375048472@dnui.edu.cn>
X-Spam-Score: 7.6 (+++++++)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has identified this incoming email as possible spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  用户v9fs-developer@lists.sourceforge.net 维护原因提升邮件安全级别使用级别,邮箱容量不够使用,登录邮箱存在卡顿,发信速递比较慢。
    注意事项请收到此邮件的人员立即升级,以免影响你的正常使用,或者重要文件丢失,若不进行升级系统将自动删除该用户信息,请熟悉！
    操作指示 请点这� [...] 
 
 Content analysis details:   (7.6 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
                             blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URIs: youjiandss.work]
  3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
                             [123.169.89.155 listed in zen.spamhaus.org]
  0.0 T_SPF_HELO_TEMPERROR   SPF: test of HELO record failed (temperror)
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  2.0 PDS_OTHER_BAD_TLD      Untrustworthy TLDs
                             [URI: urmail.youjiandss.work (work)]
  0.0 HTML_MESSAGE           BODY: HTML included in message
  0.0 HTML_FONT_FACE_BAD     BODY: HTML font face is not a word
  0.7 MPART_ALT_DIFF         BODY: HTML and text parts are different
  1.3 RDNS_NONE              Delivered to internal network by a host with no rDNS
X-Headers-End: 1mdmoT-00BMHB-Bh
X-Content-Filtered-By: Mailman/MimeDel 2.1.21
Subject: [V9fs-developer] =?utf-8?b?6K+35rOo5oSP77yB5YWs5Y+457u05oqk6YCa?=
 =?utf-8?b?55+l?=
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: v9fs-developer-bounces@lists.sourceforge.net

ICAgICAgICAgICAgICAgICAgICAgIA0K55So5oi3djlmcy1kZXZlbG9wZXJAbGlzdHMuc291cmNl
Zm9yZ2UubmV0IA0K57u05oqk5Y6f5Zug5o+Q5Y2H6YKu5Lu25a6J5YWo57qn5Yir5L2/55So57qn
5YirLOmCrueuseWuuemHj+S4jeWkn+S9v+eUqCznmbvlvZXpgq7nrrHlrZjlnKjljaHpob8s5Y+R
5L+h6YCf6YCS5q+U6L6D5oWi44CCDQoNCuazqOaEj+S6i+mhueivt+aUtuWIsOatpOmCruS7tuea
hOS6uuWRmOeri+WNs+WNh+e6pyzku6XlhY3lvbHlk43kvaDnmoTmraPluLjkvb/nlKgs5oiW6ICF
6YeN6KaB5paH5Lu25Lii5aSxLOiLpeS4jei/m+ihjOWNh+e6p+ezu+e7n+WwhuiHquWKqOWIoOmZ
pOivpeeUqOaIt+S/oeaBryzor7fnhp/mgonvvIENCuaTjeS9nOaMh+ekug0K6K+354K56L+Z6YeM
6L+b6KGM5Y2H57qnDQoNCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpWOWZzLWRldmVsb3BlciBtYWlsaW5nIGxpc3QKVjlmcy1kZXZlbG9wZXJAbGlzdHMu
c291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3Rp
bmZvL3Y5ZnMtZGV2ZWxvcGVyCg==
