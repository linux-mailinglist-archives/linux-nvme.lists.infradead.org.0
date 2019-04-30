Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B0C3F0FE
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 09:15:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XUfjqKlID9w4ba42TbEO3e1iFKOKnu1PDAMJx1dLGXs=; b=hIqzvCh78+koz+wT7MqdAsPtT
	td/hzjA3ORIxwzmhMgH2zrhlsA/ynEGnSHjywsWQ28U4Te29kn9q6UiVIzwOW752SLpeAQYg9BzET
	XmiRQF6Ay9lxooKERRg+2wcsdytdIfBZsThz8XIclGWB7DI2lE4c+5zTE0tJtGwxbaYw3P1TvSkYI
	uFMPgoyddgPuD7tTrZkR5+iVuMnpRIpH0gqEheQa2VMqDjSdC0goq5d3gF8KYhcsuIgv6VcS4eB4C
	MOvkIM+w+rVFEdIWXy8dntc4Fw7ZvLwVTWqCQFDvpEyEgccr9YJv9NDcU30rtCEGieH1Apo1jx/Sm
	KHajZuXbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLMzL-0000r0-Av; Tue, 30 Apr 2019 07:15:39 +0000
Received: from mail-wr1-f42.google.com ([209.85.221.42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLMzG-0000qP-2i
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 07:15:35 +0000
Received: by mail-wr1-f42.google.com with SMTP id f7so11176559wrs.2
 for <linux-nvme@lists.infradead.org>; Tue, 30 Apr 2019 00:15:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=AU8BYTqDIjicFROMD5W6eKC4kWeCQwMjd/H5XH3RvFQ=;
 b=hVdJgNOOdM2M3f+uN/t2qIadJMOrI5UZwhwP2oL5w87scCFkH2K4PQF4QnNdO0h/v9
 t4KaZNCBg0P6l84XCtqfWaveqYHV96oZxcNjbm8Gn7BDi3/K/LeapXHfAvQV+iphk2Gh
 nAf8RpwJ6MG7ZGSa4dt8LG8nWDgLPSQ6vLg7Su2Biz1OboscAuQzkodOnapUf+JYybpT
 DvZl2iWA3r7OEPqhlsd9GgzSrbt9ZAlDSEeLFfaNA6+IWRirbyE+9RszJ31t7QRm6o+A
 dL8shENC8Jp56Rdgj/A47ylwCyohaq8BhSSx6LSgbkCTFZpEFjAFpgX++NL2SOhqjEI3
 M7+w==
X-Gm-Message-State: APjAAAUY4dvo1WcABxdBqGeBzmq3ydDwVax/q/1kbqSHir0tyveJ0AXe
 FtroreJM6IzK0lSdLBTnPXg=
X-Google-Smtp-Source: APXvYqxDaDUq8Xc+hUy9MAxLLj6S2T5lrh35jLgs91MAnwRs/k1v/WzAX0zcAAYc9y92OymorO5sxQ==
X-Received: by 2002:a5d:508f:: with SMTP id a15mr12330139wrt.273.1556608532350; 
 Tue, 30 Apr 2019 00:15:32 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:2546:74c6:68ba:516?
 ([2601:647:4800:973f:2546:74c6:68ba:516])
 by smtp.gmail.com with ESMTPSA id d3sm2115073wmf.46.2019.04.30.00.15.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 30 Apr 2019 00:15:31 -0700 (PDT)
Subject: Re: [PATCH nvme-cli] nvme_fc auto-connect scripts
To: Hannes Reinecke <hare@suse.de>, Keith Busch <keith.busch@intel.com>
References: <20190430064359.24905-1-hare@suse.de>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <79a99c17-8f2d-3b44-057a-38c9d9e5c85e@grimberg.me>
Date: Tue, 30 Apr 2019 00:15:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190430064359.24905-1-hare@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_001534_118349_C69D82EA 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.42 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Hannes Reinecke <hare@suse.com>, Simon Schricker <sschricker@suse.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 James Smart <james.smart@broadcom.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hannes,

I added these to the discovery log change stuff, which
makes nvme-fc-autoconnect service a unified service not just for
FC. I thought you had a look at the series.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
