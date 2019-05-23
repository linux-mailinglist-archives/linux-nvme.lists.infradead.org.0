Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3659127505
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 06:23:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9970mRUZdfaJhJurwlu+a6CGdQ4yReQmg2wWwPuExxU=; b=o/K5ZtcN+AQb1F
	yRl6fGXtb10bvj4XUcmqzWKeSKO4K9La180HfWRrhCIhEyDu0x65VV1kXBYjAvWaLkYmqXQpntadI
	POH7flDGpHKNjvdlwckiGIeI6ikv8YEsL9TTSEOJYt2ksJCQ60dxs6WOfdSlwSoyxvx1ZXiC+vimg
	RGyPcsiPc9yYq2OJG9hkNvqJE8vHEWRAWBU0JpKWyyLkUgoQRWx0GpJ3i9wJCBnfaHuCneU/2Kjft
	z4bt+SrYytd2P+YS6jPqkR8wSCLT/et42lVA8jMSAC2iVYvG4N3PME4KXG0lTeNFppKTFCYQ2roY0
	lgMQUNPMqJt38rHhKklw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTfFn-0004fH-F1; Thu, 23 May 2019 04:22:55 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTfFh-0004ex-Sj
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 04:22:51 +0000
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20190523042246epoutp03eb18f07e6d348a4d503b69590a5fbce7~hNSILjxBY0149501495epoutp03M
 for <linux-nvme@lists.infradead.org>; Thu, 23 May 2019 04:22:46 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20190523042246epoutp03eb18f07e6d348a4d503b69590a5fbce7~hNSILjxBY0149501495epoutp03M
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1558585366;
 bh=bTgVNdh6fXkL1Tsf/kMTdUfmY6/gE9Q2ExbjnKqBhjc=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=de6Ax7YMrdOv2jU1XOGLjnY3oADarqSq0I35NvYYyniW90nnaK/+Xx4ZhmGKWqVtG
 XzKIzz5byIMoyZhRnjGy8+TSSwcEVQ5NjPW2Blj9AMJjXa6mYUDjM1VQVQ2ctmFdT7
 VTwoECRbBed1YHbu+dOzDjO2D2NaMJFLCt6HZMN4=
Received: from epsmges2p1.samsung.com (unknown [182.195.40.182]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTP id
 20190523042244epcas2p2c4fa7c0c5318981d10070cbf96fa191e~hNSGa_mZE0334703347epcas2p2G;
 Thu, 23 May 2019 04:22:44 +0000 (GMT)
X-AuditID: b6c32a45-d5fff70000001063-bf-5ce62013db65
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
 epsmges2p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 3B.77.04195.31026EC5; Thu, 23 May 2019 13:22:43 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH 0/2] nvme-cli: fix disconnect-all for pcie tp
From: Minwoo Im <minwoo.im@samsung.com>
To: "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <20190516172350.11864-1-minwoo.im.dev@gmail.com>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190523042243epcms2p661452370709ce8cfdf38c10a9cf5f637@epcms2p6>
Date: Thu, 23 May 2019 13:22:43 +0900
X-CMS-MailID: 20190523042243epcms2p661452370709ce8cfdf38c10a9cf5f637
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA02Se0hTYRjG+XZ2OV5Wx3npVQnHkQgF3SZtrmhieGmkhiAE1WCd9ODEsws7
 0zL/UNOyJMKSQsTSsFwpUmjO5RVmWahFSURqSogmahpCVJpSm2ei//14eB/e53m/D8cky4Iw
 PM9ko60miiGFvnzHYJQqJlD6TSefWlOpp1/95KkbmudE6vXrfomY9kXdlEjb1LvA03Y8LMnE
 zjBHDTSVQ1ultCnbnJNnytWQaVn6JL1SJVfEKA6r40mpiTLSGjI5PTMmNY9x7yGlhRRT4JYy
 KZYlZQlHreYCGy01mFmbhqQtOYxFobDEspSRLTDlxmabjUcUcnmc0j15jjHcW7grsgRe7C1r
 F5WivVUIx4E4BO9b06uQLy4hnAhm1vv5Hl1MBMCmM7AK+eCBxDEoHbMLPLKEiIA/i3JOjoKV
 nlGBh4XEQSi9s8j3cBCRAj2PupGHMSId+j+28jwMhBhqK+f4HIdDl71za8aH0ED9jQkhpwfD
 eOuyaJt/DDUgjoPgyvRbjOMA+LrWg7j0ANMrCRyWwPPHak8RICoQfP7e5rXKoGx+1VsqA/oX
 /T0ynzgA3W0fMM6aDPYWDRc4ArqW67dkzF3wabeMm4iElxN8bmIPXBvcFG1Xct6f9daLhFWX
 yxsxFOxjS0LOqoV/t70Hdueadb4RViNp3c6N63btrdvZ24iwFhRCW1hjLs3GWRS737QdbX21
 6BQnqn2X7kIEjkh/sSF+TicRUIVskdGFAMfIIPHI8IxOIs6hii7RVrPeWsDQrAsp3e1vYWHB
 2Wb3xzXZ9AplnEolP6xUK1VxanKfuMNvXCchcikbnU/TFtq67ePhPmGl6FaN4/ITv8kLZH3h
 QPlMXsn01dA17dmNYnPGaOXbU2tLt6N/NYs/sarfgpsP+lhc9sx3KfWLTnTib5aDSayY/FDo
 G/1aXh5CRi349Q6snI6nF5pOEvM1x9v/9KVFxrJTDY6i8KH9DG/mYtT56nh98bA53z68kTSf
 4Gjkd1IjMpLPGihFNGZlqf/to6SUgAMAAA==
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190516172415epcas4p4c4e3f6ce4d62a28cf4632f3fa766e861
References: <20190516172350.11864-1-minwoo.im.dev@gmail.com>
 <CGME20190516172415epcas4p4c4e3f6ce4d62a28cf4632f3fa766e861@epcms2p6>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_212250_285654_6B08C526 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <keith.busch@intel.com>, Minwoo Im <minwoo.im.dev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Gentle ping here.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
