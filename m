Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 164F0CCA9D
	for <lists+linux-nvme@lfdr.de>; Sat,  5 Oct 2019 16:48:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ETqnBo87auhU66fBcGSsTnL3JlcRyrNgczLnthx68hQ=; b=p7Tglru8+VGkFb
	6pBm6gPq1OHHfg4MTFeR2EA7yMjsJhgxiHFaBF4YKHZeq1lRZjiWoUR3gMcwhyzR9eKf1mOEfGgrv
	SlPoNCX0aEXN0+1Z/ujKCgn/cXQHcRTzklkWpJNFm6Tb4Blc5VIdA4DF/jA4ozi+RwTXTK222hKA2
	F+4vwgFDvyPI9loxjJ7O8htr0Zd1Ym2iVtI1gqvT9HFmUs5DezN1sm1fYfoDgDWbvcEZiHmrys+DS
	cxZWy9zVveHG8eHskPXaQVeE93jrQ9qpGaiXSzVf1EcGmE+JimR+TYa9L4FqnCJc+xfQuNIhgj+Vi
	ELQJ5lzTch/LkfL7NZ5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGlM3-00071L-NC; Sat, 05 Oct 2019 14:48:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGlLy-000714-HT
 for linux-nvme@lists.infradead.org; Sat, 05 Oct 2019 14:48:15 +0000
Received: from keith-busch (unknown [8.36.226.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F110820862;
 Sat,  5 Oct 2019 14:48:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570286894;
 bh=mQvgIiL6Xzi6cECRFh3msnA/q2nSjb9ljQi1aRj74WI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=q3JzzkP8gxk+NNM/x6muR+6XC+1DmW+UyjygWLYwuHAT/A5eFCZK82aCxvsDdKmks
 W0ek8Ksu99yOVxKN/Tx/Tii9VCIKOckE0nJSuug/0NdQ69JhSRihPjdqRPcj00mimk
 6dFkELCGrwqdrzQKEreEBisTH/uTEXM/7CVKFAos=
Date: Sat, 5 Oct 2019 08:48:12 -0600
From: Keith Busch <kbusch@kernel.org>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Subject: Re: [PATCH] nvme: define struct for __nvme_submit_sync_cmd()
Message-ID: <20191005144811.GB30437@keith-busch>
References: <20191001231346.18518-1-chaitanya.kulkarni@wdc.com>
 <58CA8A6F-46B6-4728-9EF4-ED3EAEEEEE2E@javigon.com>
 <BYAPR04MB5749A393F5328589B36CDE36869C0@BYAPR04MB5749.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR04MB5749A393F5328589B36CDE36869C0@BYAPR04MB5749.namprd04.prod.outlook.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_074814_602940_CE4DA46E 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Javier =?iso-8859-1?Q?Gonz=E1lez?= <javier@javigon.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Oct 02, 2019 at 06:10:09AM +0000, Chaitanya Kulkarni wrote:
> On 10/1/19 10:47 PM, Javier Gonz=E1lez wrote:
> > Makes sense to me. We have other places with similar arguments (e.g.,
> > nvme_submit_user_cmd). Would it make sense to unify this too if we move
> > in this direction?
> > =

> Thanks for the feedback, I'll add that too in the next version.

It also looks like much of the callers can use the much simpler
nvme_submit_user_cmd() that already provides defaults to the numerous
parameters.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
