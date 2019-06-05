Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E984136313
	for <lists+linux-nvme@lfdr.de>; Wed,  5 Jun 2019 20:05:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Subject:To:From:Message-ID:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Gpbcxizp08nQmSS/8V23EvfFX5cAhMzcOC5i2Yg4Csw=; b=hi5GzjlT1fo9TO
	CS9+EPt7a5UjzuQUym3jvE5BXEqxzi2EEA4s2qemufiQ2PdFbRLArjYlhZKj+3BPIDDPAMzXUAVAa
	aj3xpZvHAn4z1eQNLUomY3WCZJlTDzucsncbW6r6KyAdxRFOoTHO9qCKM5jEVzDEkwe23uTLTg2Vy
	ERzmsnP9lCP4MqsU5hFvKaYdc2WXX9rqf+VsRC6kDww2fiMdVjgu9J8HRBMOMVVPRmxTdfOzioh9+
	2XKfG9DuDvEmha3QJb+vvklOaEDcDdVcaMAwhDPLOYNO7phn8/5udHNLd50Z4qN01AOhz1CVB/sjh
	GNwTXb0pe5VbxC3q8q+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYaHZ-0001et-RN; Wed, 05 Jun 2019 18:05:05 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYaHT-0001Tx-8U
 for linux-nvme@lists.infradead.org; Wed, 05 Jun 2019 18:05:00 +0000
Received: by mail-wm1-x342.google.com with SMTP id 16so3151458wmg.5
 for <linux-nvme@lists.infradead.org>; Wed, 05 Jun 2019 11:04:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=zadara-com.20150623.gappssmtp.com; s=20150623;
 h=message-id:from:to:subject:date:mime-version
 :content-transfer-encoding:importance;
 bh=I1vpMsXk25lr0lja0Q0IPf4OTi1u4Hl8+PgXi+Y+z7k=;
 b=xddvu9fKQfc9xEE32C2jmfxYYi5KnDckmd6c2e2WwftfmpZR9bNTA3BenBW95u1fRk
 GuVbkTamCa+DvSPUacWKyDRKqB3EShqcpGVr9IANryiiHKv7ipOQZ7EnmrrkSBTYdh5E
 m0UgF2USd0Qn8CPQgziDV3kt4WxMB5qgoa9cJPKyy62BPwvmqIwciGpbZujAjDm39Sb0
 0QWIFHj8QH3ibSUWIn0+rzVp1fGC7esVdZbKlqzgXOpiRn+Z92/IzNNC+Hzd4/zTckgI
 9vKu1I9ezJ+y82+opshQQeRB9z3lBOFMZVZBFwB6DPBw4qcA8sOOZeMH1sz9wEVB61UY
 xtcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:from:to:subject:date:mime-version
 :content-transfer-encoding:importance;
 bh=I1vpMsXk25lr0lja0Q0IPf4OTi1u4Hl8+PgXi+Y+z7k=;
 b=YZHBOuurZy3emovjDMt45MXbn1VauRMYFJO0QqlSzI4X6xs30P6brLEYJmuPN7J3zQ
 Wq19CEnnmEQY6C8cNume3SwCeJf879UhPPQnXFMbEoV0MycvcDd9vcl4l50HaLycQGrm
 eW0bhXmA28l8yiXgSaIpj4oO4+FvopQ6B8uKNji4jtHOy3cKfsR/oZne1wbIGxmqFcvl
 nPTz3hIajHMN30+RcGAcKkNh2E1Sew8BqKk/+ZFdDbgeRaTNrbiVWRPIIt++nTWv7BDc
 5HkYmkHmy2UdZ1A1vTZYe1FklF3cJcO/GR/wz47bD2Dv+kgOqmns3DEDJzO0YXxryiqK
 Yk0g==
X-Gm-Message-State: APjAAAUwkCamepegaDTFGvNw4h382eN+nn7bI2a/hYlCjjOATdCAgJdK
 tHwv6uJvX5+2LTi6dpjn8e/Z59OKUNo=
X-Google-Smtp-Source: APXvYqwPRx2zwLQUKYOBbp6buB/aNEJGGkJHTff95eYmrIxUmL1DqlfXhBl6zuuPLCUTpVpYVZbSTw==
X-Received: by 2002:a1c:4054:: with SMTP id n81mr23854955wma.78.1559757896736; 
 Wed, 05 Jun 2019 11:04:56 -0700 (PDT)
Received: from alyakaslap ([82.166.81.77])
 by smtp.gmail.com with ESMTPSA id d10sm25757287wrh.91.2019.06.05.11.04.55
 for <linux-nvme@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 11:04:55 -0700 (PDT)
Message-ID: <F7E28AA1609E4FC495B5E8D4250E7DEF@alyakaslap>
From: "Alex Lyakas" <alex@zadara.com>
To: <linux-nvme@lists.infradead.org>
Subject: NULL pointer dereference in nvmet_rdma_queue_disconnect during bond
 failover
Date: Wed, 5 Jun 2019 21:03:32 +0300
MIME-Version: 1.0
X-Priority: 3
X-MSMail-Priority: Normal
Importance: Normal
X-Mailer: Microsoft Windows Live Mail 16.4.3528.331
X-MimeOLE: Produced By Microsoft MimeOLE V16.4.3528.331
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_110459_439150_953371E2 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.2 STOX_REPLY_TYPE        No description available.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.9 STOX_REPLY_TYPE_WITHOUT_QUOTES No description available.
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

Greetings NVMe community,

I am running kernel 5.1.6, which is the latest stable kernel.

I am testing a nvmf kernel target, configured on top of a bond interface, 
for high availability. The bond interface is created on top of two 
ConnectX-3 interfaces, which represent two ports of one ConnectX-3 VF (with 
this hardware a VF is dual-ported, i.e., a single VF yields two network 
interfaces). The bond is configured in active-backup mode. Exact bonding 
configuration is given in [1]. The nvmet target configuration doesn't have 
anything special and is given in [2].

I create a nvmf connection from a different machine to the nvmet target. 
Then I initiate bond failover, by disconnecting a cable that corresponds to 
the active bond slave. As a result, I get the following kernel panic:

[  268.036732] mlx4_en: b1s1: Link Down
[  268.036739] mlx4_en: b0s1: Link Down
[  268.036771] mlx4_en: b2s1: Link Down
[  268.138594] bebond: link status definitely down for interface b1s1, 
disabling it
[  268.138597] bebond: making interface b1s0 the new active one 53500 ms 
earlier
[  268.138671] RDMA CM addr change for ndev bebond used by id 
0000000019666fc8
[  268.138673] RDMA CM addr change for ndev bebond used by id 
000000007a8dd02e
[  268.138674] RDMA CM addr change for ndev bebond used by id 
00000000f825cc30
[  268.138675] RDMA CM addr change for ndev bebond used by id 
00000000c575ce3d
[  268.138733] BUG: unable to handle kernel NULL pointer dereference at 
0000000000000148
[  268.138764] #PF error: [normal kernel read fault]
[  268.138782] PGD 0 P4D 0
[  268.138795] Oops: 0000 [#1] SMP PTI
[  268.138811] CPU: 1 PID: 869 Comm: kworker/u4:5 Not tainted 
5.1.6-050106-generic #201905311031
[  268.138839] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 
1.10.2-1ubuntu1 04/01/2014
[  268.138885] Workqueue: rdma_cm cma_ndev_work_handler [rdma_cm]
[  268.138912] RIP: 0010:nvmet_rdma_queue_disconnect+0x19/0x80 [nvmet_rdma]
[  268.138937] Code: e8 bc fe ff ff e9 68 ff ff ff 0f 1f 80 00 00 00 00 66 
66 66 66 90 55 48 89 e5 53 48 89 fb 48 c7 c7 80 10 86 c0 e8 57 1d ff d1 <48> 
8b 93 48 01 00 00 48 8d 83 48 01 00 00 48 39 d0 74 3a 48 8b 8b
[  268.139020] RSP: 0018:ffffb28a0111be08 EFLAGS: 00010246
[  268.139712] RAX: 0000000000000000 RBX: 0000000000000000 RCX: 
0000000000000000
[  268.140348] RDX: ffff9cc2a7c15c00 RSI: 000000000000000e RDI: 
ffffffffc0861080
[  268.140764] RBP: ffffb28a0111be10 R08: ffff9cc2a7c15c00 R09: 
000000000000008c
[  268.141195] R10: 00000000000001ed R11: 0000000000000001 R12: 
ffff9cc2a7c54aa8
[  268.141616] R13: ffff9cc2a9b55800 R14: ffff9cc2a7c54a80 R15: 
0ffff9cc2a78ee60
[  268.142057] FS:  0000000000000000(0000) GS:ffff9cc2b9b00000(0000) 
knlGS:0000000000000000
[  268.142520] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
[  268.142962] CR2: 0000000000000148 CR3: 00000001afe30004 CR4: 
00000000000606e0
[  268.143430] Call Trace:
[  268.143880]  nvmet_rdma_cm_handler+0x94/0x292 [nvmet_rdma]
[  268.144343]  cma_ndev_work_handler+0x45/0xb0 [rdma_cm]
[  268.144792]  process_one_work+0x20f/0x410
[  268.145246]  worker_thread+0x34/0x400
[  268.145689]  kthread+0x120/0x140
[  268.146141]  ? process_one_work+0x410/0x410
[  268.146595]  ? __kthread_parkme+0x70/0x70
[  268.147045]  ret_from_fork+0x35/0x40

This is 100% reproducible.

Thanks,
Alex.

[1]
echo +bebond >/sys/class/net/bonding_masters
echo "1" > /proc/sys/net/ipv6/conf/bebond/disable_ipv6
echo "1" > /sys/class/net/bebond/bonding/mode
echo "100" > /sys/class/net/bebond/bonding/miimon
echo "1" > /sys/class/net/bebond/bonding/fail_over_mac
echo "60000" > /sys/class/net/bebond/bonding/updelay
ifconfig b1s1 down
echo "+b1s1" > /sys/class/net/bebond/bonding/slaves
ifconfig b1s0 down
echo "+b1s0" > /sys/class/net/bebond/bonding/slaves
echo "b1s1" > /sys/class/net/bebond/bonding/primary
ip addr add 10.3.3.23/24 dev bebond

[2]
mkdir /sys/kernel/config/nvmet/subsystems/volume-55555555
echo 1 > 
/sys/kernel/config/nvmet/subsystems/volume-55555555/attr_allow_any_host
echo 000055555555 > 
/sys/kernel/config/nvmet/subsystems/volume-55555555/attr_serial
mkdir /sys/kernel/config/nvmet/subsystems/volume-55555555/namespaces/1
echo 0977dff3-6885-43b3-a948-000055555555 > 
/sys/kernel/config/nvmet/subsystems/volume-55555555/namespaces/1/device_uuid
echo -n /dev/loop0 > 
/sys/kernel/config/nvmet/subsystems/volume-55555555/namespaces/1/device_path
echo 1 > 
/sys/kernel/config/nvmet/subsystems/volume-55555555/namespaces/1/enable

mkdir /sys/kernel/config/nvmet/ports/1
echo -n "ipv4" > /sys/kernel/config/nvmet/ports/1/addr_adrfam
echo -n "rdma" > /sys/kernel/config/nvmet/ports/1/addr_trtype
echo -n  10.3.3.23 > /sys/kernel/config/nvmet/ports/1/addr_traddr
echo -n 4420 > /sys/kernel/config/nvmet/ports/1/addr_trsvcid
ln -s /sys/kernel/config/nvmet/subsystems/volume-55555555 
/sys/kernel/config/nvmet/ports/1/subsystems/



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
