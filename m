Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D3DF8DE87
	for <lists+linux-nvme@lfdr.de>; Wed, 14 Aug 2019 22:15:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8HFLWrMCwWPqjt3ksVvECteQRNkF2OlXybLXkwEV0Ww=; b=Okzq7OSmvjYY7gzECMn2HUq7o
	dU/4j5W1cfD6QcVza9swohxLCHNXAynSz/du+wdrjbPa5QpDdCPPtCQLcVcxwAlgj35pzBEIoCO4i
	Um7XpJWDYAdPv50hOHXjyX9KZqspJwX6EY/DyynvVh9O1nSclr0wRqNgMEUdqvEGQL7c0PdcWexLb
	e3eT4r5Ob9nearKLkEhhkwJ5YeXac71l9OD4EmiRWyfDxLW6rgYiDy57pF+pGvzhse6MXhgsU7Xns
	4jdPDPzrfnw4vV7cwWLTFoGsNBU1lj3lqPbSVYslidIVZ3MS9eblYuMrjNrkpSC1GJTxef8Prjkfh
	+tijmq4OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxzfk-0007HV-Tt; Wed, 14 Aug 2019 20:15:05 +0000
Received: from mail-oi1-f179.google.com ([209.85.167.179])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxzfb-0007Go-2Y
 for linux-nvme@lists.infradead.org; Wed, 14 Aug 2019 20:14:56 +0000
Received: by mail-oi1-f179.google.com with SMTP id k22so5594566oiw.11
 for <linux-nvme@lists.infradead.org>; Wed, 14 Aug 2019 13:14:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=yYK0sqvA5olIT1mzlTwluGr45n8/MIXVDp4G/KMif8s=;
 b=RiPJVHY/ra6rePvJcRqRwGgtwNMD1gZKIJNp7xy+pLfLnhR1XOFQ3QT86KzAplGTuv
 DWW9ptXqG4uKwYWFEJNKUJICzysujNkcZrvvQOdPXH78NtAk11TW/m73KVkxynDC5dih
 BMG/7SxYxJi12HZmJDQZ0RRP9GcjkAyLTms8hqcbd92pjydI29TksPrnQAl+VXV7/TPs
 sMfyublcfQgZa2sT5O3vNkle4tte4Ak+gJW65882uWz0e/RoDau2UESCsPIIL+kDv0Nw
 jXnilrtM+ZhCohG5SPh7B4B5dMPwf1lZulSIxYG9o4ScxYtU3hsVWGLBmMy9KTwM9ly/
 SQ2w==
X-Gm-Message-State: APjAAAV3zPpfVrW9x5emni4WeYVLhlr8+fRcmerFP9scJFJQKhyaGFi+
 Vqf+pwrjXNti3AUHXMnby8g=
X-Google-Smtp-Source: APXvYqys3Sqim6uIWQgcc1+U9sk7N3oy0MlqgoOfdvovOya+wHbv047sTO5413ImSvmlWv3ka+cw3w==
X-Received: by 2002:aca:4f07:: with SMTP id d7mr1266288oib.70.1565813693600;
 Wed, 14 Aug 2019 13:14:53 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id o82sm351227oig.27.2019.08.14.13.14.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 14 Aug 2019 13:14:52 -0700 (PDT)
Subject: Re: [PATCH v2] nvme: Add quirk for LiteON CL1 devices running FW
 22301111
To: Mario Limonciello <mario.limonciello@dell.com>,
 Keith Busch <kbusch@kernel.org>
References: <1565813304-16710-1-git-send-email-mario.limonciello@dell.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <32f20898-b9af-eee0-97de-0a568de54b57@grimberg.me>
Date: Wed, 14 Aug 2019 13:14:50 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1565813304-16710-1-git-send-email-mario.limonciello@dell.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_131455_117432_5B92DCE6 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.179 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Crag Wang <Crag.Wang@dell.com>, sjg@google.com,
 LKML <linux-kernel@vger.kernel.org>, linux-nvme@lists.infradead.org,
 Jens Axboe <axboe@fb.com>, Ryan Hong <Ryan.Hong@Dell.com>,
 Jared Dominguez <jared.dominguez@dell.com>,
 Charles Hyde <charles.hyde@dellteam.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Mario,

Can you please respin a patch that applies cleanly on nvme-5.4?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
