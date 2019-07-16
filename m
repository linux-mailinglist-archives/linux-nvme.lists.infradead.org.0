Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 803E06B178
	for <lists+linux-nvme@lfdr.de>; Wed, 17 Jul 2019 00:01:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=dIKcjuufE7603ykXvsMplgpGK
	t43miyuiSZ1m0hKB66J1kXbvfqTaSEC3lp2sWD/qDkvso/fM3wmHq3qsAkTpj1/wfKTAxsBme043+
	QCTgxfHLBpDIUiJSMdnwoBd4Zg+tTLRwqs1lxmg62NiLRT0IUQ85ksr9tuPGGLup9tCw8T/1PwZcr
	YLYK1oB70wG8E88pB6ndXA0AXcj6J0aVWfKKfU1HFGwRbxc9tj935nzi0CTZwS61T17mUl3cq0cyl
	Y/fs/zyyfVPLIWHlmfboDkjssqYIGjI1x3rijefUi2GjUaxn9QT9XNSIBq1SnPVJBsXiPWMjn5BMp
	FO+TQ1gyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnVVp-0007rz-HR; Tue, 16 Jul 2019 22:01:29 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnVVi-0007rS-G1
 for linux-nvme@lists.infradead.org; Tue, 16 Jul 2019 22:01:23 +0000
Received: by mail-oi1-f196.google.com with SMTP id g7so16850030oia.8
 for <linux-nvme@lists.infradead.org>; Tue, 16 Jul 2019 15:01:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=r1cIWo5o4amru15qskuS5FEX61hX1jz85VDGvHvKmqZ5AJ7Th/oh9e3evOK5pUqjvG
 OHNBTJOpf9TcBSY+mw5EyDYZtlPx7SSFbnxMI5uwkA61sDqyq/LrK7YVIt7/M/MDumdd
 5Mfk8k0Es20PKRdSvxtd7QLGS1JDIAy1m026zPCuPQdzcPH9r+h1EGtwejUUZq90y0l2
 xFghxU3vcrRvh1FpUsGEns/nyNxZsPziWg3oY8yFJ0B/TfE5g3c1D7jdKgTjKR1qTyJD
 80ao5zwEF/f67+krqX1lCUUKezITHMrXRFG8WZCrx2gqvsSNkoDiqXznVxQ5650p+Ike
 6ckw==
X-Gm-Message-State: APjAAAUAq1L5EkbccYXuR94SbFtgQWuKSB2igeJncL3LY5YULLC1v+8w
 bFPGNML2/ZuYa1kRrs7TC8U=
X-Google-Smtp-Source: APXvYqwn2/21svkfK8Hkcm1uXD6S8SlnzgOSWxKe+yLwkgncPsqikaH2M2CbZQZ0FelqcGvG6PeYCA==
X-Received: by 2002:aca:338a:: with SMTP id z132mr18549330oiz.54.1563314480191; 
 Tue, 16 Jul 2019 15:01:20 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id v203sm8533435oie.5.2019.07.16.15.01.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 15:01:19 -0700 (PDT)
Subject: Re: [PATCH 10/10] nvme-cli: nvmf auto-connect scripts
To: James Smart <jsmart2021@gmail.com>, linux-nvme@lists.infradead.org
References: <20190716211241.7650-1-jsmart2021@gmail.com>
 <20190716211241.7650-11-jsmart2021@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <c8856a6c-9b1e-13f5-07d2-985ca8899e11@grimberg.me>
Date: Tue, 16 Jul 2019 15:01:18 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190716211241.7650-11-jsmart2021@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_150122_533680_72198846 
X-CRM114-Status: UNSURE (   8.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: Hannes Reinecke <hare@suse.com>, Simon Schricker <sschricker@suse.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
