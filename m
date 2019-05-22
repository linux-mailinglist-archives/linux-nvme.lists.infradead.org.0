Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24EB125BC9
	for <lists+linux-nvme@lfdr.de>; Wed, 22 May 2019 03:53:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eUDGcnnGCex6RoRaScz5P3h74NZTx2e4tjK/kUm9Wps=; b=tppVPFYPIbotsR
	rd91pty+2+cuRI8hvZ2bMM17uACXAvdCE3KqMkeIriDjB+U6CrPTEuShHOipp4wWOXOWrxwdqqFu7
	zKtRhEqwmei19QwXCsY+4SO7orMifW3GqseW400LdKtSuZbrIB9ZobkaG8Ji46CRwLMaNdzVcbmCK
	D8I1+0pPozsO09UIRlCBi0w4PCmVBDko7qQI60qCHDHF3W17Er0aDzedABy4hM+ROl0MSwha2H/xq
	j2f1YCOLpqwId9g73ptqBI529bmZxkh+oh5w0VDqrV4DCQuZQXhZh6WygJoZjWPjTN7nb1vuTObZF
	+sx5EYtRbLHOMFfMAXeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTGRb-000826-J5; Wed, 22 May 2019 01:53:27 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTGRX-00081m-Ay
 for linux-nvme@lists.infradead.org; Wed, 22 May 2019 01:53:25 +0000
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20190522015318epoutp024270c08f4258738a4612607f9ac51687~g3mWQ-PBL2377523775epoutp02j
 for <linux-nvme@lists.infradead.org>; Wed, 22 May 2019 01:53:18 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20190522015318epoutp024270c08f4258738a4612607f9ac51687~g3mWQ-PBL2377523775epoutp02j
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1558489998;
 bh=JU0EpsAsGhKEATwfSGR+tSp03Xfr1XQw2+esKnvxKX4=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=KH1hxaw/IsXpihIMIf05h1YnM3JuaOMcTVsE6bs9EWLeXfWeGuX+fPAHpDvoPQ/kV
 24C1GOLh0e2jNbvxcDf3dPey3MGUer2bkD0zsu3TCCJCx9ImnRNBDDdsd/3/ImRLVa
 nf04/AzTbPw7DPyCWB4LuQAimf652kWeiuHJSyhk=
Received: from epsmges2p4.samsung.com (unknown [182.195.40.189]) by
 epcas2p1.samsung.com (KnoxPortal) with ESMTP id
 20190522015317epcas2p16f775dcafdcac8563a50bddf1f4e73bd~g3mUuzfT72688526885epcas2p1x;
 Wed, 22 May 2019 01:53:17 +0000 (GMT)
X-AuditID: b6c32a48-6a1ff7000000106f-f2-5ce4ab8ce705
Received: from epcas2p1.samsung.com ( [182.195.41.53]) by
 epsmges2p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 D8.66.04207.C8BA4EC5; Wed, 22 May 2019 10:53:16 +0900 (KST)
Mime-Version: 1.0
Subject: Re: nvme drive kernel 5.0 problem
From: Minwoo Im <minwoo.im@samsung.com>
To: =?UTF-8?B?SXbDoW4gQ2hhdmVybw==?= <ichavero@chavero.com.mx>, Keith Busch
 <keith.busch@intel.com>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <2c9601b1555b0bf731310213a1d78960ea7a6ad5.camel@chavero.com.mx>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190522015315epcms2p7dc1561cfbacdbd9615a48d61d3488e48@epcms2p7>
Date: Wed, 22 May 2019 10:53:15 +0900
X-CMS-MailID: 20190522015315epcms2p7dc1561cfbacdbd9615a48d61d3488e48
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA02SfUhTURjGObubu5az07R8M8hxTUxLt6mzGU4izRZZCEFFDebF3Zy0r3an
 qP84Tc1G0BemWKSh5dLCsC/xo2JWWGlFQaSBlM0+/chQKtBo16vofz8Oz3ue93nOIQnppCiU
 zLU4GLuFNlF+y4R3e6JUMSdbvDrFS2+YusbTKVQPPZ4SqOuujoi3Etqnd8bE2oaubwLtrcbi
 TOKgKdnI0AbGLmMs2VZDriVHQ+3aq0/VqxIVyhhlknozJbPQZkZDpWVkxqTnmnxGlCyfNuX5
 jjJplqXkKcl2a56DkRmtrENDMTaDyaZU2mJZ2szmWXJis63mLUqFIk7lU2aZjO778bYGoqDy
 8inCifoELuRPAk6AjuFyoQstI6W4HcH4+SmRC5GkBK+E2fYgDoNwNLy5lcmhFIfBn+8KbjII
 R8F4Z5+IYz8cCc6q70KOgzED1dd++3FMYDk0lLpEvJMEao6PCHleC/ea7iCO/XEGjFy5Oq9Z
 BQMtY+IFnnhSh3gOhvKhfoLnlfDhbyfi1gEMMDSewmMx3HaruRyAyxC8G70xPyqHki+Tc7YS
 vBsGfrbO5RPiCDhRlc5L0qCqrhrxG4fBvbGLBCchfAlbO+T87eHwaFDIKwKhsmdWvJCp/ZJ3
 vslwmPR45ndcA02vf/jxrAW3l+uJa3iagOvvJ8Snkax2seTaJca1i8b1iGhGqxkba85h2Dhb
 wtJnbUNz3y1a244evsjwIEwiKkCi/vhJJxXR+Wyh2YOAJKhgyfNnwzqpxEAXFjF2q96eZ2JY
 D1L54p8hQldlW32f1+LQK1VxiYmKJJValRinpkIkbcsHdFKcQzuYIwxjY+wLcwLSP9SJKrAr
 pLBN/kNTFKkJoFpfOdric9fh+I0FqRPrfw1GZvTry4wFN90Tr4dOO6mICkH9ueTG0s/OwKKd
 Z496PV0hwzWjh1ek/dNlT90IXtetbNq+58LNTQd6BFmDfV+ujE4bHhzy9G57qX0r27Ev61hq
 lEYzWNLZO+Pe8K27tWV/89cZSsgaaWU0YWfp/zmUbkqEAwAA
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190522005114epcas4p2cae7e26ab679da2e44a50b803724a336
References: <2c9601b1555b0bf731310213a1d78960ea7a6ad5.camel@chavero.com.mx>
 <4a0dda5365f24e7223d1672233d7f1ac64640d31.camel@chavero.com.mx>
 <CACVXFVPXGKQ9UD6P5RsF5j8yry+1LuLrUeb4F6o74=uGK4Ak4Q@mail.gmail.com>
 <a640a0768d19aedee71a1abad7817a3a71291851.camel@chavero.com.mx>
 <20190521142000.GA350@localhost.localdomain>
 <e027eae2-0c39-8e83-5a09-fda82d4c2a52@chavero.com.mx>
 <20190521220007.GB4302@localhost.localdomain>
 <CGME20190522005114epcas4p2cae7e26ab679da2e44a50b803724a336@epcms2p7>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_185323_706223_2A2AA194 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Reply-To: minwoo.im@samsung.com
Cc: linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> I tried setting:
> 
> trace_event=nvme_setup_cmd,nvme_complete_rq
> 
> but got this error:
> 
> [    0.284016] Failed to enable trace event: nvme_setup_cmd
> [    0.284043] Failed to enable trace event: nvme_complete_rq

IMHO, maybe you just can make nvme_core module to be in kernel image
itself and try it again.  It looks like enabling trace_event has occurred before
the module is loaded onto kernel.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
