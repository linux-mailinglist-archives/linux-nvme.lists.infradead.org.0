Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B3267EDB
	for <lists+linux-nvme@lfdr.de>; Sun, 14 Jul 2019 13:37:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FJraTllPNlAhU8AlWVt7a/NK1RX6ekD4cJ8vCo6PIbE=; b=j5oyrCb9FsyrDu
	ijgPl1HaF9RrkY2R6EZfRnoxZjSR7ES9xIqtv2fyKC47WQxdftpHfrV/7Qh7D5xpggMO7CEOhQtD9
	7SlAtrLPLlk/gZOwpKwoRBmoV86P86AHVVfY+6ZFdR+DpTBha49VUGkJMtUkW0l7+XepLTGy5ye2h
	W8ICE7PShMTOYm20bHPNEW5Sw1Axpiyq5FMOHWLvdrI0iMWuZyjRXTouNALYVoxIp2HVZGDFaOAUu
	kZhHMIxnQQFk6VPb/PVJ1ODTNrWM/ZOh1GTwMW7gT8m8XSA5hhSeol9eXQXBo8TEYUUrZ0fbTJ0LH
	+raseMETIA6/kv2hkRDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmcoJ-0008QD-Mz; Sun, 14 Jul 2019 11:36:55 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmco5-0008Pt-Om
 for linux-nvme@lists.infradead.org; Sun, 14 Jul 2019 11:36:42 +0000
Received: by mail-pf1-x42e.google.com with SMTP id t16so6157488pfe.11
 for <linux-nvme@lists.infradead.org>; Sun, 14 Jul 2019 04:36:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=n+86Ax8W/WMHVLPRdJOUwYvPuaMUANv0VDw9WT5rUuM=;
 b=CT9OYJ/46iVSx/bL3kWVZZN8Tp8lgvsMdOjb5h7ZVbMEdrjlyCpd2k9TqbzLcCDq54
 Bs/0bFi3e0mcGqyt0FdW1nTO0k2mZx2E6rXKIqEztblS0Zda188VO9abYo9RepnBBy04
 N0cnFRlQqOooo2RXVmQQlVzRmekdmiEfyXiUMr+mKiBvrpNwL1uSQSVCBdHlE4vUuw0k
 2wPaAsngSbIOhspjHUeER/x3bPx05tfxLrOQ1VphRmETRMQmzEIguOE1b9aVXfr9zkO/
 wVtif4kJKY5poYtFGH3uYMgCiYQbd9wfkH21xElMxZYe4pFOJiSi/CysRlz41CX9pGy1
 7Usw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=n+86Ax8W/WMHVLPRdJOUwYvPuaMUANv0VDw9WT5rUuM=;
 b=ZI60SMZKL6EsBqkg+xczZYFZsPN0txYO/9+FXv3CogQWSEczgttmChygWdYvqayCAa
 4EUzJVSvkmiPJSFDMv2f3ANAgwdJH1rfNP4OpuNPV4CbpbdQMfRQcWFBmwDVdIYAzDzR
 ip5sgxvGDbgSK1aSiKi+09EXwc1jLfce5UZAghz2L/Qn5l9kxPmrKwjuuDqijkuDAz3O
 eAWxCgwf63/U1Og8lfDv+01NCamexTwCv3nrf7SZVbfXr9IdaTGRfTp8iTQE9N56kf8/
 8XbKgSHQQ4T1y1YFcB3tGOcZ00eYiei6krN87xMvCCaW4ACSBz1pZJHn1vuzzml07cJ0
 lhag==
X-Gm-Message-State: APjAAAUjVO/M+cAxHVMirn9GsBYbXqDEfmsrpzdUdKIYPy/006SyMZve
 wzU+GonF29rb/0MEqrcH3Mk=
X-Google-Smtp-Source: APXvYqzfjH+TlTu9DoEIM9l++gJAYvXUp5n400/lCokIKF2v3sC8PIrows2qkg8kU5sGuKBMohw/+Q==
X-Received: by 2002:a63:c442:: with SMTP id m2mr21595371pgg.286.1563104200252; 
 Sun, 14 Jul 2019 04:36:40 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id 21sm1467139pfj.76.2019.07.14.04.36.38
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 14 Jul 2019 04:36:39 -0700 (PDT)
Date: Sun, 14 Jul 2019 20:36:37 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: hch@lst.de, axboe@kernel.dk, keith.busch@intel.com, sagi@grimberg.me
Subject: Re: [PATCH v3 3/5] nvme-pci: rename module parameter write_queues to
 read_queues
Message-ID: <20190714113637.GE2993@minwoo-desktop>
References: <cover.1561385989.git.zhangweiping@didiglobal.com>
 <d61b1b9a31c3d2fae9ece26bcd5f4504b25f059f.1561385989.git.zhangweiping@didiglobal.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d61b1b9a31c3d2fae9ece26bcd5f4504b25f059f.1561385989.git.zhangweiping@didiglobal.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_043641_811739_EDF7443E 
X-CRM114-Status: UNSURE (   6.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42e listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Minwoo Im <minwoo.im.dev@gmail.com>,
 Weiping Zhang <zhangweiping@didiglobal.com>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


Hi All,

Could you guys please give some advices for this patch?  I have been
confused for why we need to use write_queues even we have HCTX_TYPE_READ
instead of HCTX_TYPE_WRITE in block layer.

Thanks,

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
