Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9D3F151C1
	for <lists+linux-nvme@lfdr.de>; Mon,  6 May 2019 18:36:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eNpASYbPqXZ+SznazGA0xR3WCEbKeNxZFP7GhFIXs5M=; b=nusKTC+Ye3QnpwFCzC3fTwGb4
	TNHte7R1zNxqye3OxfO5/EvnFCxcu0ii5BOxa1DRtFOK0uKSoYckEni5+VLx8Kjn2/rqiEHQhcFzB
	2LUn5HLAqFdqscEZ9mfttM7GT9NP7tmrVzCY7fT9EGjzSW9CfU4TXaN8m2w09mDnREHg5qVVJXnIN
	i1z/VuLGdUvgr8hjvjffA6BQPDM+wPHswncWuj3Vdu+AjV1GJgjdd9GSIkJVXcsqB1mcktoty7yZt
	9Vux63fqisrgc9HimcFiEkEx1euHvPZkbHw3D46nnUU1Uf6yBCTSLkk/hrp0kAaHbpQ6ZFReZIF3v
	fKOoMlbMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNgbS-0004SE-Ib; Mon, 06 May 2019 16:36:34 +0000
Received: from mail-pg1-x52c.google.com ([2607:f8b0:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNgbN-0004Ri-DB
 for linux-nvme@lists.infradead.org; Mon, 06 May 2019 16:36:30 +0000
Received: by mail-pg1-x52c.google.com with SMTP id p6so6706413pgh.9
 for <linux-nvme@lists.infradead.org>; Mon, 06 May 2019 09:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=xPFZDoklrih9soNehSTF7UYnzbhjeg8D+OIuwQuyJqs=;
 b=u++7UkVbThDbdTeTc7pl8Aqn/uyr/XplE52z3UHWRv1DaP5MHLhZ1qDepAnJhND7Fx
 ZggoPEkh3WGarb3bgo7wnvzHjNevnP04vlqgqNHybh5+uDqM6UIva6IEPqXcoCdtfVEO
 WxAIkZZ5qqYRdpznMMwV38qEm/iTHOvkkzk8IrpZWapclMVvg32davQ3D/SIjOG5xt4m
 Pw5Yk3MUJw1chR18NdFcrlItVWReSVhLiiwgUXFIl40U2oNOtsfTJ3cWT+bUPHnCdpwr
 Zl9hY+pj96Ag8bEjn3yKHbm3Yv4oWY9yiJFM6okpAQi77v+8xxscd+k1ccCsu0iW0A9m
 l08w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=xPFZDoklrih9soNehSTF7UYnzbhjeg8D+OIuwQuyJqs=;
 b=d84LnXsZs6p4VVuCTjhE+r8buIslGeJRt03FxWX1cqd/s+oxpRJUqVVwhnmwk1D3Iq
 S0i/FilSu+07AVoiRs83zIRpA5N1Bys+3YRjgjzB4UbUT14yMrdq1xQpxYhq488a3PpK
 TF6w6GyKtdb5x489LFlZ5OXToxgul05JO0qVzQegPrVJcEMF8QhWgYugHf7kyaJ3DG+Y
 VuJtewAnZaimr+iH2Wd2+4W1qoIupy5zznuBBMKWijjtcYmP2v3niUsIoWnUHBrxb93V
 abHX06fLtdU0/WVwqOHExL/AvCQk3MruiMV4yf+rIHGuo9mC1BqUJ42ErMwcSaS99Jv6
 vX1Q==
X-Gm-Message-State: APjAAAW2zmWqrujWQbb39ynO8W91TWU0L/jJ0K4i67vsJsVdnSlREblr
 qwvLtEPe1Flz8a4yD35OMbU=
X-Google-Smtp-Source: APXvYqxt4nQx6oTVXN/zvV6H2TmYm2uzvURbd1SU21EbiKu0EA0HDS3hQHGPJPMStA6K4b6GpapgGw==
X-Received: by 2002:a63:fb4d:: with SMTP id w13mr33496256pgj.397.1557160588639; 
 Mon, 06 May 2019 09:36:28 -0700 (PDT)
Received: from [192.168.0.6] ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id i17sm4048522pfo.103.2019.05.06.09.36.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 09:36:27 -0700 (PDT)
Subject: Re: [PATCH] nvme-trace: Add fabrics command opcode name
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <20190505152201.23830-1-minwoo.im.dev@gmail.com>
 <SN6PR04MB45270E164CBC599246428CE386300@SN6PR04MB4527.namprd04.prod.outlook.com>
From: Minwoo Im <minwoo.im.dev@gmail.com>
Message-ID: <44d10a9d-8c5b-cf02-b8ca-51695eb83a36@gmail.com>
Date: Tue, 7 May 2019 01:36:24 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <SN6PR04MB45270E164CBC599246428CE386300@SN6PR04MB4527.namprd04.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_093629_445966_DD3EFE6F 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52c listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <keith.busch@intel.com>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/7/19 1:29 AM, Chaitanya Kulkarni wrote:
> Please do not mix admin and fabric commands.

Chaitanya,

Thanks for your review.  I'll prepare V2 for this.

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
