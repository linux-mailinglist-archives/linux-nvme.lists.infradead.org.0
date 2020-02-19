Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3229165041
	for <lists+linux-nvme@lfdr.de>; Wed, 19 Feb 2020 21:51:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MH7u307pBnohXYHISkGKLzg4J9if9qWS0gXIaif8RUQ=; b=GM3ACX37Cesg0F
	1gu/IrS0g3ZXBKFUU/GKv41YT2QXSyqLavglhePB05B8jQ88p5Jgi3HGeQgPaRPKF6yv9GyEUyGgc
	h7OGYA4zJujjlijwNByfEPn3KP/e/rYQc3rwaA7FiO48YPw9rguKlCv7CechLYp6qC/QmaELCq8IC
	FKmZB1LwEjc/mx9C3LN6PfUP6BOt7FS7v/+m+N8MoOEhHNYPjyiCaOTYa1MivHc/wvgwp3R2+C+u2
	CoXdrFtByf24cOxx1d8FG51VV1OI6L0kjywNkGc/v45W2ZGztjsczyT1CBvwE1W1PEgIY3cdIBf2I
	jAhsNEUVJ9li7szc8/OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4WJG-0002JA-Jt; Wed, 19 Feb 2020 20:51:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4WJD-0002I9-2F
 for linux-nvme@lists.infradead.org; Wed, 19 Feb 2020 20:51:04 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9CBC924656;
 Wed, 19 Feb 2020 20:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582145459;
 bh=elJqOZvyfQWvQ8In1AjZnSkYrHkr0otpJwRaZHCgpxo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=W9zlWyXKb/CugInFr/h8yZlZWNm/5x9tvD/KWAIHPuEvsrHpTChlurGgY9L8raBoy
 wCVWBwUJFkJs/eldR9pUoyDf7UuLF2zMc5co+/QiWjCncTpyha8w/AdC3seNQvEH0n
 iRIJiEGNGesF863JJJ5xwD3RTPGZ3uzH2UU3i2sE=
Date: Thu, 20 Feb 2020 05:50:52 +0900
From: Keith Busch <kbusch@kernel.org>
To: Tim Walker <tim.t.walker@seagate.com>
Subject: Re: [LSF/MM/BPF TOPIC] NVMe HDD
Message-ID: <20200219205052.GB28509@redsun51.ssa.fujisawa.hgst.com>
References: <d043a58d-6584-1792-4433-ac2cc39526ca@suse.de>
 <20200214170514.GA10757@redsun51.ssa.fujisawa.hgst.com>
 <CANo=J17Rve2mMLb_yJNFK5m8wt5Wi4c+b=-a5BJ5kW3RaWuQVg@mail.gmail.com>
 <20200218174114.GA17609@redsun51.ssa.fujisawa.hgst.com>
 <20200219013137.GA31488@ming.t460p>
 <BYAPR04MB58165C6B400AE30986F988D5E7100@BYAPR04MB5816.namprd04.prod.outlook.com>
 <20200219021540.GC31488@ming.t460p>
 <BYAPR04MB5816DF16BC3720ABF286671EE7100@BYAPR04MB5816.namprd04.prod.outlook.com>
 <CANo=J15Wvm2R+vuLj6QQ5Vete507cA==5Rw=4vn3Z8npZ=2vww@mail.gmail.com>
 <CANo=J14GM=Uu7qWirtvgzjEKVCzLV0nZLOOPqD9M+nwOKrv7yQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANo=J14GM=Uu7qWirtvgzjEKVCzLV0nZLOOPqD9M+nwOKrv7yQ@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_125103_128445_B786AEE2 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 linux-scsi <linux-scsi@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Ming Lei <ming.lei@redhat.com>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 Hannes Reinecke <hare@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 11:28:46AM -0500, Tim Walker wrote:
> Hi Ming-
> 
> >Will NVMe HDD support multiple NS?
> 
> At this point it doesn't seem like an NVMe HDD could benefit from
> multiple namespaces. However, a multiple actuator HDD can present the
> actuators as independent channels that are capable of independent
> media access. It seems that we would want them on separate namespaces,
> or sets. I'd like to discuss the pros and cons of each, and which
> would be better for system integration.

If NVM Sets are not implemented, the host is not aware of resource
separatation for each namespace.

If you implement NVM Sets, two namespaces in different sets tells the host
that the device has a backend resource partition (logical or physical)
such that processing commands for one namespace will not affect the
processing capabilities of the other. Sets define "noisy neighbor"
domains.

Dual actuators sound like you have independent resources appropriate to
report as NVM Sets, but that may depend on other implementation details.

The NVMe specification does not go far enough, though, since IO queues
are always a shared resource. The host may implement a different IO
queue policy such that they're not shared (you'd need at least one IO
queue per set), but we don't currently do that.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
