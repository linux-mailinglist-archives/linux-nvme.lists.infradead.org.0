Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 099643ADAC
	for <lists+linux-nvme@lfdr.de>; Mon, 10 Jun 2019 05:42:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:Date:Message-ID:
	In-Reply-To:To:From:Subject:Mime-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EYrx+Bo4c3b9kE4AwECwqELpudslVOb+lR3sbTFv5W0=; b=B3DFF26VukiVI9
	qVuwXHhT4DGLl3XSERdIjVfBsN9w2u4LiFnITyLfxU9wuw2ZqoxScynq6xDtgbv8Y1WHOBWhIwCob
	r9xGWAUNkqN0MdUZA/AWMQM2KmgAw45PYAv7R+YmGzOpbqKkjDVBE5Vgo+xQ773r5I/ftMlT7T5ip
	dqXjWG7k08EVM/BJmILqhKzZx7CKsz1QrTWlx9+Kd/9EjZZUcjJFOD5+uhsx4vbI/x4oCt1kyf4j+
	ru4FmYBCPgdkGSIM6nOTUJB5OcOuvqJAscFC6mvs8dKl8tKWXAQpWOwKBqXpnFyJMkI/sf1ZbuGjN
	4wDQtdWgkwqjFx/zMkbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haBC0-0005Et-W9; Mon, 10 Jun 2019 03:41:57 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haBBr-0005EQ-Um
 for linux-nvme@lists.infradead.org; Mon, 10 Jun 2019 03:41:50 +0000
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20190610034140epoutp030c0752d2b3ede0ac412997f9a095c336~muVYGp9F90260802608epoutp03d
 for <linux-nvme@lists.infradead.org>; Mon, 10 Jun 2019 03:41:40 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20190610034140epoutp030c0752d2b3ede0ac412997f9a095c336~muVYGp9F90260802608epoutp03d
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1560138100;
 bh=6t7Z8HIoqxJFUsvKdJhMtMgiubBIeiUTnxheezWhTTM=;
 h=Subject:Reply-To:From:To:CC:In-Reply-To:Date:References:From;
 b=eHG0z/rccaBDmEZ4lPW6kacoqWghyc7QtR/hflDJQuOXCpwMnl53OeengObRl5Elh
 5KIBoqXFEsiPMDI9d0GtedZVoYKBxmnWn/BYHkb3PqoPoNhj630OmX0XZsgI6fIsDO
 EJ4c3S6evZCBAmp/PYF7ADtf8sEbWzO2UbZkOHu4=
Received: from epsmges2p2.samsung.com (unknown [182.195.40.183]) by
 epcas2p4.samsung.com (KnoxPortal) with ESMTP id
 20190610034137epcas2p4fe71c2dce81554ab3d9d0c767c9229ca~muVVkV-ts0531505315epcas2p4M;
 Mon, 10 Jun 2019 03:41:37 +0000 (GMT)
X-AuditID: b6c32a46-d4bff7000000106f-f3-5cfdd1711810
Received: from epcas2p4.samsung.com ( [182.195.41.56]) by
 epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 25.7D.04207.171DDFC5; Mon, 10 Jun 2019 12:41:37 +0900 (KST)
Mime-Version: 1.0
Subject: Re: [PATCH 2/3] nvme-pci: remove queue_count_ops for write,poll_queues
From: Minwoo Im <minwoo.im@samsung.com>
To: Ming Lei <ming.lei@redhat.com>
X-Priority: 3
X-Content-Kind-Code: NORMAL
In-Reply-To: <20190610024127.GE26551@ming.t460p>
X-Drm-Type: N,general
X-Msg-Generator: Mail
X-Msg-Type: PERSONAL
X-Reply-Demand: N
Message-ID: <20190610034136epcms2p1981531bd319a5210167e26251c5a6a4b@epcms2p1>
Date: Mon, 10 Jun 2019 12:41:36 +0900
X-CMS-MailID: 20190610034136epcms2p1981531bd319a5210167e26251c5a6a4b
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
X-Brightmail-Tracker: H4sIAAAAAAAAA02SeWyLcRjH8+v7et9uU15VPCaheUdc2XpE5yWdazPFyIQI0pg33Wsbvbxv
 u7gSZYQNiSNCGlEJussRYwdzlm2IO5iijciWyWZbRjBHQ9+9Xfjvk+/veb7P8XvkmNJLJMoL
 7C6Ot7NWmojHa+5MZJI3PIuYteUtJPPnWiPBlFc2yJhDgVeI8flbSSZwuEjG/CxOYM53dOOz
 SNPBoi7SdMUbIk1PwhdxU1VFMWG6dHqbqT7oIUzdN14S2eQqqzGfY3M5Xs3ZLY7cAnteGr1w
 aU56jiFVq0vWTWOm0mo7a+PS6Iys7OTMAmu0H1pdyFrdUSmbFQRaM8PIO9wuTp3vEFxpNOfM
 tTp1OmeKwNoEtz0vxeKwTddptXpDNHKNNf9c833c6Yvb+NbfTnhQGVmC5HKgpsAHD1+C4uVK
 qg5BS7CJEHUFNQQidUNFHEotgdf3HCIqqTHQ264tQXFRdSJ01T8cIDJBjQfPkXZcZBVFQyhU
 SYqOGNWFYGewA4kPQCng2O5WXOJRUFta3afHUVp4d/RMTB8GwcpOsp+7G32xXBXsCj/CJB4C
 73/UI6l7gHDXDAm3weUyRiwL1E4Erz+di6VqYHtbT5+9gloEvR/9fTpOjYO2F42EFJMBxXtO
 yUTGoiPWdh7HRE8sOuOFqxrJPgnuvsGliEGw506E7B+q7kSLTOIk6AkEYk2OhNLnHTF3EzTs
 b5NJO26SwbHmGuwAUnv/rdn7X2Hvv8InEVaBhnNOwZbHCXqn/v+PrUJ9dzkpsw6dfpwVQJQc
 0QMVMCdiVg5gC4VNtgACOUarFJ0Nv81KRS67aTPHO3J4t5UTAsgQnf8gljjM4oheud2VozPo
 U1O10wyMIVXP0CMUVQlBs5LKY13ceo5zcnx/nkwel+hBz25+M75zZ41JGex/nL1izrJ5Cy37
 V5mfY6HF0D3PuIz9EH7QW1ul8f4q/Fzku968Y/5m1fum6vLJYX5B+tfk8/uWxysTknbtPbEl
 feXMi/d8oQzy9toLGnpJkm3dKf7NWKiZuVV1Nn1C1q3q3XOf+hPLA5k9EeP30WWzvzRZVre2
 vqRxIZ/VTcJ4gf0LUT1kba0DAAA=
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20190610015241epcas3p2a021735345864364cb7f8c6aded4685d
References: <20190610024127.GE26551@ming.t460p>
 <20190610015155.GD26551@ming.t460p>
 <20190608180219.17523-1-minwoo.im.dev@gmail.com>
 <20190608180219.17523-3-minwoo.im.dev@gmail.com>
 <20190610022522epcms2p26bc1b339680476ac6d81050045545f44@epcms2p2>
 <CGME20190610015241epcas3p2a021735345864364cb7f8c6aded4685d@epcms2p1>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_204148_484824_E052A4B3 
X-CRM114-Status: GOOD (  22.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Reply-To: minwoo.im@samsung.com
Cc: Sagi Grimberg <sagi@grimberg.me>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Jens Axboe <axboe@fb.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> > > However, the check is valid, which shouldn't be nop, so could you fix
> > > the check instead of removing it?
> >
> > Hi, Ming.
> >
> > I don't get what you really mean here.   What do you mean "the check is
> > valid"? I don't see any valid checks in queue_count_set(), not just for
> > check for the failure by kstrtoint().  I think current code is just checks
> > the nr_cpus and do nothing after.
> >
> > Instead fixing this check inside of this function, I have posted the next
> > patch in this series to make sure the number of irqs requested not
> > exceed the num_possible_num().
> 
> I suggest to cap 'write_queues' or 'poll_writes' to num_possible_num()
> from the beginning, instead of starting with invalid number.

Ming,

Thanks for your review :)

I have already tried to limit the number of queues inside of queue_count_set()
in [1].  But Christoph had suggested to limit the number in nvme_calc_irq_sets()
instead.  It might be my code was not really good at that time, but could you
please have a look at the mail thread below and give some advices for me?

[1]  http://lists.infradead.org/pipermail/linux-nvme/2019-May/023868.html

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
