Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC8096A02B
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jul 2019 03:14:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=I45IamswPK1VrWXC64Xl0kfpV
	BmZvofSel2kfd5bE/RSppH2UDwUDLICC4NafgNIHyQcO8AfpLeqlmvNuDM6bBw3YpKao6DT8kVuGZ
	bwJkSvbiIVCFOXmcf+Zk2LVO3rDrwQIVd8T2qGO7eOQP94vppFL9b11O2afP9ZYWVEkQBtzVwT8Ae
	+cmA3St2NXFPmJjEsHV9BShpILmGPR2YYE+jwAAu+d+jCkmYxERgLwvt5RD/PllvJhYy2/M1ZIwSe
	RMNqpCENmUT+IeIqiTWC8a99xJsq4evjKbquqBE+ZjGVRfNQE3twWQOcXuTft1qBRjHv/Otx6Wc18
	oO1Wl5bSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnC2W-0000fZ-Uv; Tue, 16 Jul 2019 01:13:57 +0000
Received: from mail-pf1-f194.google.com ([209.85.210.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnC2I-0000dE-VS
 for linux-nvme@lists.infradead.org; Tue, 16 Jul 2019 01:13:45 +0000
Received: by mail-pf1-f194.google.com with SMTP id g2so8254227pfq.0
 for <linux-nvme@lists.infradead.org>; Mon, 15 Jul 2019 18:13:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=s68XObJpQG470mBogQ0O4kYRx17N46W4Tr7Mxhy7ijgGCVnR+iVsbrxKaMPqUlTR/T
 C4olPluROY6nPW72NS1f33S+DSncEFYTdxLuXG3QLO23bJ52IHRr14wTh4gpoz8Koydo
 hb4fUi01JaW9fq48W1JrZW6Box61KopuFPK75NmFhkqb2vNW1AeMWKL+Raf4y+GTuOfk
 r/r++w4LP3O4MPqDoMQiqgHw+7De61D/hkk29Om2o2GbNCA3muMdD7YUJuCEUtPuG/EX
 q0UFifdcwPT6WbmRqe8tCjhthRji1IgT+LbeHdzFj2MYdo2/syyx3oWkAZg+7obDcLyz
 2V7A==
X-Gm-Message-State: APjAAAWop/8TXKh2yStpkHNtyL2+8ZdyIRktAO3KjHBar7E+oNTooJ0w
 PPKaKASH/1im6lfUVek0M0EBWccn
X-Google-Smtp-Source: APXvYqwyOeNFiPUvfbJHqJKCimn4GBeGAwsvg4Ux9EsWnseHA+nkhuhAMyj+rqVZPHPYDpUMXw1u9A==
X-Received: by 2002:a63:778a:: with SMTP id
 s132mr27637952pgc.242.1563239622524; 
 Mon, 15 Jul 2019 18:13:42 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:10a0:43d6:25f7:7bc3?
 ([2601:647:4800:973f:10a0:43d6:25f7:7bc3])
 by smtp.gmail.com with ESMTPSA id q19sm21050390pfc.62.2019.07.15.18.13.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jul 2019 18:13:41 -0700 (PDT)
Subject: Re: [PATCH v2] nvmet-file: fix nvmet_file_flush() always returning an
 error
To: Logan Gunthorpe <logang@deltatee.com>, linux-nvme@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20190715221707.3265-1-logang@deltatee.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <1a6fe969-edaa-d26a-d8d9-086893324378@grimberg.me>
Date: Mon, 15 Jul 2019 18:13:40 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190715221707.3265-1-logang@deltatee.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_181343_029431_704EC52B 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.194 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.194 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Christoph Hellwig <hch@lst.de>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
