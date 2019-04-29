Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5375DED46
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 01:22:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JDoIp4HBmhUdBn7fQI4ke9PBQit9boB22s49c/By6y0=; b=MDwou7C0xbzlFb/6mW14v3THO
	13Ro+x5gVyKmdlohFmsMrLwqVYBP/65mPBT3i2qqSvvBBBq8+3rdRX9ao0JyMNoD3Y2Et3Th8swVp
	IbkLswZUW13WBxKZoqA+sNyg7If1T+L6iAv0lkq2dV4Gd57BVrUcdOnVXdO+JnGkc6mFTFTpoLLqD
	GWimylbYn6qUIEoxwfMCGBf5aY5ty8Yx42wNuVwF7zBYw6iu3tV/frqyatBO5DKpx7Mh/v+mjFyCb
	eJkt1UOFhYBmnAzfC1zgQy7Azi1Zjpj/7+0DyDtk9zXRBdsgb3/GhTQ81xJK00kcppMM0k3qcQ+JH
	SVur5TZ4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLFax-0008Ss-Ep; Mon, 29 Apr 2019 23:21:59 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLFas-0008SQ-R2
 for linux-nvme@lists.infradead.org; Mon, 29 Apr 2019 23:21:55 +0000
Received: by mail-ot1-f67.google.com with SMTP id f23so10244222otl.9
 for <linux-nvme@lists.infradead.org>; Mon, 29 Apr 2019 16:21:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=dBM3kLO+OmxSA5ObktuYd2lmMDcK+c/9PBGCKy5Y4PE=;
 b=j0oS7c9BEyAC5iKa84gCmrRFMBnXgLxULCWWyqVNuKX0hWXraDcXG8Y/oypuml0MhE
 6KwMC3szPxo4PWqWe1YvRa0rfRX8qBL1UHgRz3VD2oDFidSvWvHaFQJ4X+HOC2Vdnv/1
 oi2LyFNS/3EJB6odkPl6Tn9vszpXoAXVqLI0vboB9EalEsLJUgUHFammXLtVHANHvpD3
 MY/FkFk5laXjbH1H8NRMShFpyDo3HOzXEKqnPpMohrGzcBjif9vLK4WZ9Jtlkf4LipVE
 FpchCSgLGcpPrykNEWSiP+FAn7bDg7Ok0e3Seq3kxRM74H0QA70jALrdMlH6/TPK5QuV
 ibxg==
X-Gm-Message-State: APjAAAUaTNxcpLFXXOHZh0WbhIdiYMZ5k3/J2gA58ruU2ACqYl8FirMm
 OlUpLKUdoG7BM31wYPBi8H0SXjTm
X-Google-Smtp-Source: APXvYqzhlAN6+ihbS5rV205jnljT4mWEjBpzlfG8QzZXx+UsvJMGDwmzz/YHiFl0hKRzg4hoy/5e8g==
X-Received: by 2002:a9d:6f8d:: with SMTP id h13mr4901847otq.54.1556580113815; 
 Mon, 29 Apr 2019 16:21:53 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id p186sm14283182oif.34.2019.04.29.16.21.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 29 Apr 2019 16:21:53 -0700 (PDT)
Subject: Re: [PATCH 1/2] nvme: nvme_set_queue_count should use descriptive
 macros
To: Edmund Nadolski <ednadols@linux.microsoft.com>,
 linux-nvme@lists.infradead.org
References: <20190429173533.10366-1-ednadols@linux.microsoft.com>
 <20190429173533.10366-2-ednadols@linux.microsoft.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <7d907607-e7d9-68df-d88b-20d8e809a1cf@grimberg.me>
Date: Mon, 29 Apr 2019 16:21:52 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190429173533.10366-2-ednadols@linux.microsoft.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_162154_876295_B05FC762 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks fine,

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
