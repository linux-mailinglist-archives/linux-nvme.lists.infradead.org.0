Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75CD917A3A0
	for <lists+linux-nvme@lfdr.de>; Thu,  5 Mar 2020 12:04:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PGj58ikX4Bo55Y16moJIpLGqw+MbOb4T1WMxyTfvtq8=; b=jdicydfSwaUKPs
	uDRsmpVQSkmnXJ/vZ17+fEfsT4DkoSMXDiYSskRm2EI+OTDRztdMEh8+/QdBGhpsNEQiI+GM0ngXH
	VbiTWQHZVizJwYaRlDfqjopCP00Y+CBLiBn6rts4/mqBHEcr/3GKLdxO+dCelUDGE/TNJnfhGeLUU
	TCF9En8Td/JJHcFHhRcmK3L9U8ynCwrMcP5ccrqsdE2ucN4cf3M049T6lSKcP0b/0CFkJcB9TSYYA
	QYhzcz093c06RwyTfdBczLlNOa2QA5cBz4Mem7wkq99mhFwionrJC3wlkJaIuJFe4Alf/Sde1wJm+
	fckXN9+m9JvPunVB3spg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9oJ8-0001Mv-H1; Thu, 05 Mar 2020 11:04:50 +0000
Received: from mo-csw1514.securemx.jp ([210.130.202.153]
 helo=mo-csw.securemx.jp)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9oIx-0001M3-Nv
 for linux-nvme@lists.infradead.org; Thu, 05 Mar 2020 11:04:41 +0000
Received: by mo-csw.securemx.jp (mx-mo-csw1514) id 025B4DCI005604;
 Thu, 5 Mar 2020 20:04:13 +0900
X-Iguazu-Qid: 34tKIIhGyyktrZlkUi
X-Iguazu-QSIG: v=2; s=0; t=1583406253; q=34tKIIhGyyktrZlkUi;
 m=qVuwNcuxOzDkksuSilLCPobt7vXxKE/1sSG+5jF+1CA=
Received: from imx12.toshiba.co.jp (imx12.toshiba.co.jp [61.202.160.132])
 by relay.securemx.jp (mx-mr1513) id 025B4BSt010847;
 Thu, 5 Mar 2020 20:04:11 +0900
Received: from enc02.toshiba.co.jp ([61.202.160.51])
 by imx12.toshiba.co.jp  with ESMTP id 025B4A3v016619;
 Thu, 5 Mar 2020 20:04:10 +0900 (JST)
Received: from hop101.toshiba.co.jp ([133.199.85.107])
 by enc02.toshiba.co.jp  with ESMTP id 025B4Adf007560;
 Thu, 5 Mar 2020 20:04:10 +0900
From: <masahiro31.yamada@kioxia.com>
To: <hch@lst.de>
Subject: RE: [PATCH] nvme: add a compat_ioctl handler for NVME_IOCTL_SUBMIT_IO
Thread-Topic: [PATCH] nvme: add a compat_ioctl handler for NVME_IOCTL_SUBMIT_IO
Thread-Index: AdXwWtP+3uT/YWciSkKTlF+qgQWgkQBmYx6AADpE/zA=
Date: Thu, 5 Mar 2020 11:04:09 +0000
X-TSB-HOP: ON
Message-ID: <42c9a559129f4608b809a3fc093a1d6b@TGXML281.toshiba.local>
References: <c0d7091c43154d9ea7a978c42a78b01a@TGXML281.toshiba.local>
 <20200304161317.GA11268@lst.de>
In-Reply-To: <20200304161317.GA11268@lst.de>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [133.116.224.115]
msscp.transfermailtomossagent: 103
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_030439_990827_D90FEDB6 
X-CRM114-Status: UNSURE (   3.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [210.130.202.153 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: kbusch@kernel.org, axboe@fb.com, sagi@grimberg.me,
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

>This should not be exposed in the UAPI header.  I think it should just
>go into the #ifdef CONFIG_COMPAT block in core.c near the comment and
>the compat_ioctl handler.

Thank you. I tried to describe it.
Please correct me, if I am misunderstanding what you mean.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
