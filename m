Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40216E0CC3
	for <lists+linux-nvme@lfdr.de>; Tue, 22 Oct 2019 21:49:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mzwhEM1WPGlPx04i5gnftJZzuMicnZyqbesD0koUSjg=; b=KILUTsah8+4iP9eOBinnaUG6H
	Q+scjNwwR8wN/OTUg53C+eUoFDmgH1hv6XA4/c9b4C28J5Qq0Afss1FgNyjjHE1cj9o1A3DEiDEQ3
	OTZbTrYITlSEeKz/9nH0yYzBrWakwLXb0Yue1cRuRYZhfb2nvKre3fPODGjGzI6Y2+L1xlbmwNWXu
	y2ju9a1kyLPr+5YATYZYnFtWC3p0A6NTUYy9OFziaAXKbOnd2NT0YAIcjLQtt2v06qoc5P4XfqMae
	x3cYtFLaT46CLc3qcKQmnFh4zG/nv5hNlS2f94W+4Ulo/GVkjv6iCjELlLfpA+SxQRfcUa0cXYEK9
	7ZxUaYBOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN09V-0000Yr-4c; Tue, 22 Oct 2019 19:49:09 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN098-0000VV-Va
 for linux-nvme@lists.infradead.org; Tue, 22 Oct 2019 19:48:51 +0000
Received: by mail-wr1-f68.google.com with SMTP id a11so3326663wra.6
 for <linux-nvme@lists.infradead.org>; Tue, 22 Oct 2019 12:48:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/7Zh1aPWF33tthSbvZvz9bFPO4C1wjLVBXfNd4P57ho=;
 b=TBeMopkoAx9o5/PkfPOXK78Zyy2iPm/Ug9B1n0wJPrDILPrGeYpt0Xhxnz4DqifIcH
 RYksVDs1FneOruXZOlo2r9RSqckIEwNiSU6lhdrAx9ds22iaESo20QZ/L+osR6DwNy6a
 zYc+dhVyu/4+2V3yY8brPovXYuobRTD8TbUE9b4JJxwN5KD+g3A/oHWNR49KpZlprB9L
 WvxtpK3Z1uJsuhAas1P4TzreXEnMh0Hvzy3nhEp7pIwYxen74mUcnBy9n6tozyUwgjwT
 cGOFTsbTLeERHeB8MsQ2Cd9nWscU4SlIVdLbDdv+Bzwtq6FB45FEnu4/QpCVW0sRqRez
 ghAA==
X-Gm-Message-State: APjAAAUIu14t/1kQBXbKla0ur9vecXVlkrQNrefi+qBXi+jnJo3M3Q0H
 +u7YCPMkk48wwJNWltcywt0=
X-Google-Smtp-Source: APXvYqwyiHhSWngRPSmQ1i3svOkD/lGll71A+QUUWDbmv64mvm80etmGSulginfFocLBcopkRyG71w==
X-Received: by 2002:a5d:50c2:: with SMTP id f2mr4972053wrt.147.1571773720919; 
 Tue, 22 Oct 2019 12:48:40 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id p15sm19162737wrs.94.2019.10.22.12.48.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 12:48:40 -0700 (PDT)
Subject: Re: [PATCH v2 1/2] nvme-multipath: fix possible io hang after ctrl
 reconnect
To: Anton Eidelman <anton@lightbitslabs.com>, linux-nvme@lists.infradead.org, 
 hch@lst.de, keith.busch@intel.com, hare@suse.de
References: <20191018091016.GA25478@lst.de>
 <20191018183251.501-1-anton@lightbitslabs.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <7180cfee-d1d0-6dda-1bae-53235dc49a05@grimberg.me>
Date: Tue, 22 Oct 2019 12:48:35 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191018183251.501-1-anton@lightbitslabs.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_124850_291644_6F4AF114 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

Keith can you apply these to nvme-5.4-rc?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
