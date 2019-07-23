Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62DE0720C6
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 22:28:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EnlpFBr4ldsEYdTWBNvHAUFVmiRjTr9fPn7cEHVgDLQ=; b=hfLuCx6iN+iye8BNkXwxAR/u+
	jfshLRxmBJqhje1F3KqQZ+B5OI59hUAwznk41X3FDCfyorxK0JgkJUo1OftziWT+Twufu7xLD8RVq
	Kh6jI8+YC7ZscBs3a09Z/asg2UF7lh/aURJcd5ajTkWWdYWB/nFAVu4+2ta6XKwowmojHMi+g1nv9
	gR6t/W/ni6fCCK8Dp4C9dmg9eSWXdkanTrrlAduszXPio9C0ve62/yNKfe5+sdg0jh4HvfRCRPwpd
	0n2ZX0/xdEDMvta8EZN3ApG34EAW2M/tgv8Rp5OhefZy17eNwxx+vlHul0R3CRJmlWDi42YD65Mf/
	1KtSXXlpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq1OG-0000Pq-Uw; Tue, 23 Jul 2019 20:28:04 +0000
Received: from mail-ot1-f49.google.com ([209.85.210.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq1O7-0000PG-NQ
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 20:27:56 +0000
Received: by mail-ot1-f49.google.com with SMTP id l15so45430352otn.9
 for <linux-nvme@lists.infradead.org>; Tue, 23 Jul 2019 13:27:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nWpDQmZNg8zKVk12QskQ7NNS05C4fI/JmZBKLdKyu8Q=;
 b=U+lmRGHKLbbanJMBOZ485E87xVvwXyoVr2hYscbtDMdXIKyPD9a3V5WcP0rxo6PJAJ
 x9S+5U/Vzk9bC1StGwWFK4eFtdvORwfWPBUD1CjJFNdGQcDBLG5yGnusOIF+aK7nEXE3
 d35sDbpskcBAlMgFMOtwn7xLVu+sekPbJmZ96fCk/JKzUmEnffxG/+XkmfluOky3Gi/x
 rLilD/S5DAtZ9XR5xmqUxXcUpCCum1GinK2ZqD7MSCcmLWn+TrG/UnXfDt1IfbdaXX2y
 XmJuH1lclhWsg3Xmv91rfyAP4S8gu0KkGszs4NFpL5E9FHD+Xe4k9uxuSYEGYwGxyi+H
 F/Og==
X-Gm-Message-State: APjAAAUP2zaEjvetMUyEmeRYzN7NIr2mi4WbgLYCOOnICGavIQp1aVMC
 jjKQ4eFThysWzAldnb4/NO6gnYF1
X-Google-Smtp-Source: APXvYqyvdJz6ECAVkdYcycWZTYo4/m/NFlawsIYmlAN8eK0NxpKcBTmsDAz5qFSQ2kknDX9HOWuPEQ==
X-Received: by 2002:a9d:3d8a:: with SMTP id l10mr55592530otc.343.1563913674727; 
 Tue, 23 Jul 2019 13:27:54 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id v22sm15926510oth.19.2019.07.23.13.27.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 23 Jul 2019 13:27:54 -0700 (PDT)
Subject: Re: [PATCH 3/5] nvme: don't abort completed request in
 nvme_cancel_request
To: Ming Lei <ming.lei@redhat.com>, Jens Axboe <axboe@kernel.dk>
References: <20190722053954.25423-1-ming.lei@redhat.com>
 <20190722053954.25423-4-ming.lei@redhat.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <e037ecb1-1ab6-f768-40ad-b523a002fd91@grimberg.me>
Date: Tue, 23 Jul 2019 13:27:52 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190722053954.25423-4-ming.lei@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_132755_767238_D99DFE96 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.49 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-block@vger.kernel.org, Max Gurtovoy <maxg@mellanox.com>,
 Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
