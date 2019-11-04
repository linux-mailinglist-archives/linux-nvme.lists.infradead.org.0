Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5DEAEE35C
	for <lists+linux-nvme@lfdr.de>; Mon,  4 Nov 2019 16:16:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RJGDAtWp9rT2vQ8pkoIAqs4c9bajeKhphV7iZsGQ8R0=; b=GHaWdEC6KLqREy
	FLUqJnpQsz7BEWCM2ELDF95+yPFHGirXvPK3emEDCrrjfdXQTUCDxZeqX7j3svoNVKZqXfiWCjtgm
	AitBtJs6B/HyD4hpylJj/+J8nTnetjrVvCq9ht8a1bnEtq6nRFWZq3hX8pPxINBBVbkJ5gdyn2TbK
	jKlDV8bJ635v0kLqLtp8pOjhFWVsbr6imW4H8y4wHiwqQs4XVMn1iRquThmu8jUYYY/g/eEsFwB1q
	wqBfRF6OSdW/MOpy79b37Vpq0V38Eg02kPm2+TeMMgFwmXXIaVEVkW7JCrRSY9l/7NNQVFNzYyvSF
	IndcM99Y4U3Tc+iilB+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRe5d-0004aC-Kc; Mon, 04 Nov 2019 15:16:21 +0000
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRe5Z-0004ZV-IZ
 for linux-nvme@lists.infradead.org; Mon, 04 Nov 2019 15:16:18 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id C20EA27E03F9;
 Mon,  4 Nov 2019 16:16:15 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id KfDxJ_klKXSE; Mon,  4 Nov 2019 16:16:15 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 6640227E064D;
 Mon,  4 Nov 2019 16:16:15 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 6640227E064D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1572880575;
 bh=AjnnDpDaF7bW9PCgTtGxUhgirQ2AQU543GX7VWx8kp4=;
 h=Date:From:To:Message-ID:MIME-Version;
 b=DwOKDmRs+wSBhUmzJSSKP2Mcz7b8xxO65LNQITeTMQdJmPkueWiQFGa/TxprqgUZu
 NEASZwXjQNq7+ck51KhFPhy+FNT6wyFmMYIqXG0tn7ZGMD+rdgs4zTzVDE483Z3kix
 6RSlf2eqpAuQMStLbOa2RFZtnPzDELA9v2aAvWsA=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id IAkr1OWFfAie; Mon,  4 Nov 2019 16:16:15 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 4DF6927E03F9;
 Mon,  4 Nov 2019 16:16:15 +0100 (CET)
Date: Mon, 4 Nov 2019 16:16:15 +0100 (CET)
From: Marta Rybczynska <mrybczyn@kalray.eu>
To: Charles Machalow <csm10495@gmail.com>
Message-ID: <266047531.90300507.1572880575232.JavaMail.zimbra@kalray.eu>
In-Reply-To: <CANSCoS_MX97_JyLkKrZ7YjTS9L+JsZcPsHpoZ-keA8t3W394Dg@mail.gmail.com>
References: <20191031050338.12700-1-csm10495@gmail.com>
 <20191031133921.GA4763@lst.de>
 <1977598237.90293761.1572878080625.JavaMail.zimbra@kalray.eu>
 <CANSCoS-2k08Si3a4b+h-4QTR86EfZHZx_oaGAHWorsYkdp35Bg@mail.gmail.com>
 <871357470.90297451.1572879417091.JavaMail.zimbra@kalray.eu>
 <CANSCoS_MX97_JyLkKrZ7YjTS9L+JsZcPsHpoZ-keA8t3W394Dg@mail.gmail.com>
Subject: Re: [PATCH] nvme: change nvme_passthru_cmd64's result field.
MIME-Version: 1.0
X-Originating-IP: [192.168.40.202]
X-Mailer: Zimbra 8.8.12_GA_3794 (ZimbraWebClient - FF57 (Linux)/8.8.12_GA_3794)
Thread-Topic: nvme: change nvme_passthru_cmd64's result field.
Thread-Index: lwHoMaVJp4iAGDQQRMXUf/hZljBQaQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_071617_801284_C8D4B244 
X-CRM114-Status: UNSURE (   4.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [92.103.151.219 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, axboe <axboe@fb.com>,
 kbusch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



----- On 4 Nov, 2019, at 16:01, Charles Machalow csm10495@gmail.com wrote:

> Yes. The idea is just to change the 64 IOCTL structure so it lines up
> with the old ones so that the same struct can be used from userspace.
> Right now the first 32 of 64's result doesn't line up with the old
> result field.
> 
> - Charlie Scott Machalow

OK, then this will work on all architectures I know:

struct nvme_passthru_cmd64 {
        __u8	opcode;
	__u8	flags;
	__u16	rsvd1;
	__u32	nsid;
	__u32	cdw2;
	__u32	cdw3;
	__u64	metadata;
	__u64	addr;
	__u32	metadata_len;
	__u32	data_len;
	__u32	cdw10;
	__u32	cdw11;
	__u32	cdw12;
	__u32	cdw13;
	__u32	cdw14;
	__u32	cdw15;
	__u32	timeout_ms;
        __u32   rsvd2;
	__u64	result;
};

Marta

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
